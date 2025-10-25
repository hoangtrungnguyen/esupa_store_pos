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

class LocalProductRepository extends ProductRepository {
  final _dio = Dio();

  @override
  Future<List<Product>> findAll() async {
    final response = await _dio.get(
      "http://localhost:8080/api/v1/product-variants",
    );
    return (response.data as List<dynamic>).map((e) {
      final data = e as Map<String, dynamic>;
      return Product(
        id: data['product']['id'] as int,
        name: data['product']['name'] as String,
        description: '',
        price: data["variant"]["price"] as double,
        category: '',
      );
    }).toList();
  }
}
