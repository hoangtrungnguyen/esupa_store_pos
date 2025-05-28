import 'package:esupa_store_pos/widgets/currency_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/order.dart';
import '../bloc/current_order/current_order_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CurrentOrderBloc, CurrentOrderState>(
      listener: (context, state) {},
      builder: (context, state) {
        final order = state.order;

        final bool isLoading = switch (state) {
          LoadingCurrentOrderState() => true,
          _ => false, // Default case for any other state
        };

        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Current Order',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Order # ${order.id.substring(0, 8)}', // Show first 8 chars of UUID
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
              const Divider(height: 24),
              Expanded(
                child:
                    order.items.isEmpty
                        ? Center(
                          child: Text(
                            'Cart is empty. Add some items!',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16,
                            ),
                          ),
                        )
                        : ListView.builder(
                          itemCount: order.items.length,
                          itemBuilder: (context, index) {
                            final item = order.items[index];
                            return OrderItemCard(orderItem: item);
                          },
                        ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildSummaryRow('Subtotal', order.subtotal),
                    _buildSummaryRow(
                      'Tax (${(order.taxRate * 100).toStringAsFixed(0)}%)',
                      order.tax,
                    ),
                    const Divider(height: 20, thickness: 1.5),
                    _buildSummaryRow('Total', order.total, isTotal: true),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      isLoading
                          ? null
                          : () {
                            context.read<CurrentOrderBloc>().add(
                              const CurrentOrderEvent.checkoutOrder(),
                            );
                          },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade600,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                  child:
                      isLoading
                          ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                          : const Text(
                            'Checkout',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed:
                      isLoading
                          ? null
                          : () {
                            context.read<CurrentOrderBloc>().add(
                              const CurrentOrderEvent.clearOrder(),
                            );
                          },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.indigo.shade600,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: BorderSide(color: Colors.indigo.shade600),
                  ),
                  child: const Text(
                    'Clear Cart',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSummaryRow(String label, double amount, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 20 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.black87 : Colors.grey.shade700,
            ),
          ),
          CurrencyText(
            amount: amount,
            style: TextStyle(
              fontSize: isTotal ? 20 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.black87 : Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}

class OrderItemCard extends StatelessWidget {
  final OrderItem orderItem;
  const OrderItemCard({super.key, required this.orderItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderItem.product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    orderItem.product.description,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    context.read<CurrentOrderBloc>().add(
                      CurrentOrderEvent.updateItemQuantity(
                        orderItem.product.id,
                        orderItem.quantity - 1,
                      ),
                    );
                  },
                ),
                Text(
                  '${orderItem.quantity}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    context.read<CurrentOrderBloc>().add(
                      CurrentOrderEvent.updateItemQuantity(
                        orderItem.product.id,
                        orderItem.quantity + 1,
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(width: 8),
            CurrencyText(
              amount: orderItem.product.price * orderItem.quantity,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.redAccent),
              onPressed: () {
                context.read<CurrentOrderBloc>().add(
                  CurrentOrderEvent.removeItem(orderItem.product.id),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
