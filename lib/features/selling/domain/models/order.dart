import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const Order._(); // Private constructor for custom getters/methods

  const factory Order({
    required String id,
    @Default([]) List<OrderItem> items,
    @Default(0.08) double taxRate, // e.g., 0.08 for 8%
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  // Custom getters for calculated values
  double get subtotal {
    return items.fold(
      0.0,
      (sum, item) => sum + (item.product.price * item.quantity),
    );
  }

  double get tax {
    return subtotal * taxRate;
  }

  double get total {
    return subtotal + tax;
  }
}

// lib/models/order_item.dart
@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required Product product,
    @Default(1) int quantity,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
