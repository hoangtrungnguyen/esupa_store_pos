part of 'current_order_bloc.dart';

@freezed
class CurrentOrderEvent with _$CurrentOrderEvent {
  const factory CurrentOrderEvent.started() = _Started;
  const factory CurrentOrderEvent.addItem(Product product) = _AddItem;
  const factory CurrentOrderEvent.removeItem(String productId) = _RemoveItem;
  const factory CurrentOrderEvent.updateItemQuantity(
    String itemId,
    int quantity,
  ) = _UpdateItemQuantity;
  const factory CurrentOrderEvent.clearOrder() = _ClearOrder;
  const factory CurrentOrderEvent.checkoutOrder() = _CheckoutOrder;
}
