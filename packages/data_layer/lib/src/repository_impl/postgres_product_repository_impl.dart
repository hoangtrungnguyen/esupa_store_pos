import 'package:data_layer/data_layer.dart';
import 'package:data_layer/src/data_sources/postgres/product_data_source.dart'
    show ProductDataSource;
import 'package:dio/dio.dart';

class PostgresProductRepositoryImpl extends ProductRepository {
  PostgresProductRepositoryImpl(this._productDataSource);

  ProductDataSource _productDataSource;

  Future<List<Product>> findAll() async {
    List<Map<String, dynamic>> data = await _productDataSource.findAll();
    return data.map((e) {
      return Product(
        id: e['id'] as int,
        name: e['name_full_size_14'] as String,
        description: '',
        price: (e['price'] as int).toDouble(),
        category: '',
      );
    }).toList();
  }
}


