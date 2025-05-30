import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

/// Product map from database
@freezed
abstract class Product with _$Product {
  /// TODO: make private later
  const factory Product({
    required int id,
    required String name,
    required String description,
    required double price,
    required String category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
