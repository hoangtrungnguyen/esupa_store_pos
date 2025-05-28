import 'package:bloc/bloc.dart';
import 'package:esupa_store_pos/features/selling/domain/models/order.dart';
import 'package:esupa_store_pos/features/selling/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

part 'current_order_bloc.freezed.dart';
part 'current_order_event.dart';
part 'current_order_state.dart';

class CurrentOrderBloc extends Bloc<CurrentOrderEvent, CurrentOrderState> {
  CurrentOrderBloc()
    : super(CurrentOrderState.initial(Order(id: UuidV4().generate()))) {
    on<_AddItem>((event, emit) {
      // Using switch expression for pattern matching on state
      switch (state) {
        case InitialCurrentOrderState(order: var order):
          _handleAddItem(order, event.product, emit);
        case LoadedCurrentOrderState(order: var order):
          _handleAddItem(order, event.product, emit);
        case LoadingCurrentOrderState(order: var order):
          _handleAddItem(order, event.product, emit);
        case ErrorCurrentOrderState(order: var order):
          _handleAddItem(order, event.product, emit);
      }
    });

    on<_UpdateItemQuantity>((event, emit) {
      switch (state) {
        case InitialCurrentOrderState(order: var order):
          _handleUpdateItemQuantity(order, event.itemId, event.quantity, emit);
        case LoadedCurrentOrderState(order: var order):
          _handleUpdateItemQuantity(order, event.itemId, event.quantity, emit);
        case LoadingCurrentOrderState(order: var order):
          _handleUpdateItemQuantity(order, event.itemId, event.quantity, emit);
        case ErrorCurrentOrderState(order: var order):
          _handleUpdateItemQuantity(order, event.itemId, event.quantity, emit);
      }
    });

    on<_RemoveItem>((event, emit) {
      switch (state) {
        case InitialCurrentOrderState(order: var order):
          _handleRemoveItem(order, event.productId, emit);
        case LoadedCurrentOrderState(order: var order):
          _handleRemoveItem(order, event.productId, emit);
        case LoadingCurrentOrderState(order: var order):
          _handleRemoveItem(order, event.productId, emit);
        case ErrorCurrentOrderState(order: var order):
          _handleRemoveItem(order, event.productId, emit);
      }
    });

    on<_ClearOrder>((event, emit) {
      emit(
        CurrentOrderState.initial(Order(id: Uuid().v4())),
      ); // New empty order
    });
  }

  void _handleAddItem(
    Order currentOrder,
    Product product,
    Emitter<CurrentOrderState> emit,
  ) {
    final currentItems = List<OrderItem>.from(currentOrder.items);
    final existingItemIndex = currentItems.indexWhere(
      (item) => item.product.id == product.id,
    );

    if (existingItemIndex != -1) {
      currentItems[existingItemIndex] = currentItems[existingItemIndex]
          .copyWith(quantity: currentItems[existingItemIndex].quantity + 1);
    } else {
      currentItems.add(OrderItem(product: product));
    }
    emit(CurrentOrderState.loaded(currentOrder.copyWith(items: currentItems)));
  }

  void _handleUpdateItemQuantity(
    Order currentOrder,
    String productId,
    int quantity,
    Emitter<CurrentOrderState> emit,
  ) {
    final currentItems = List<OrderItem>.from(currentOrder.items);
    final itemIndex = currentItems.indexWhere(
      (item) => item.product.id == productId,
    );

    if (itemIndex != -1) {
      if (quantity > 0) {
        currentItems[itemIndex] = currentItems[itemIndex].copyWith(
          quantity: quantity,
        );
      } else {
        currentItems.removeAt(itemIndex);
      }
    }
    emit(CurrentOrderState.loaded(currentOrder.copyWith(items: currentItems)));
  }

  void _handleRemoveItem(
    Order currentOrder,
    String productId,
    Emitter<CurrentOrderState> emit,
  ) {
    final updatedItems =
        currentOrder.items
            .where((item) => item.product.id != productId)
            .toList();
    emit(CurrentOrderState.loaded(currentOrder.copyWith(items: updatedItems)));
  }
}
