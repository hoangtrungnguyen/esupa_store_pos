part of 'current_order_bloc.dart';

@freezed
abstract class CurrentOrderState with _$CurrentOrderState {
  const factory CurrentOrderState.initial(Order order) =
      InitialCurrentOrderState;
  const factory CurrentOrderState.loading(Order order) =
      LoadingCurrentOrderState;
  const factory CurrentOrderState.loaded(
    Order order, {
    String? checkoutMessage,
  }) = LoadedCurrentOrderState;
  const factory CurrentOrderState.error(Order order, String message) =
      ErrorCurrentOrderState;
}
