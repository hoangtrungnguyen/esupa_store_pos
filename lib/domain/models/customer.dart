import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';

@freezed
sealed class CustomerModel with _$CustomerModel {
  factory CustomerModel({required int id, required String name}) =
      _CustomerModel;
}
