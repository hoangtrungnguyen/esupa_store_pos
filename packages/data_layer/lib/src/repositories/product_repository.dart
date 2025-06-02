import 'package:data_layer/src/entities/product/product_entity.dart';

abstract class ProductRepository {
  Future<List<Product>> findAll();
}
