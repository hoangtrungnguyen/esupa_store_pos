part of 'selling_bloc.dart';

@freezed
abstract class SellingState with _$SellingState {
  const factory SellingState({
    Customer? customer,
    required User user,
    required Session session,
  }) = _SellingState;

  const SellingState._();

  factory SellingState.fromJson(Map<String, dynamic> json) =>
      _$SellingStateFromJson(json);
}
