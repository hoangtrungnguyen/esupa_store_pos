import 'package:data_layer/data_layer.dart' show ProductRepository, Product;
import 'package:dio/dio.dart';
import 'package:esupa_store_pos/cache.dart';

class LocalProductRepository extends ProductRepository {
  final _dio = Dio();

  @override
  Future<List<Product>> findAll() async {
    final token = Cache.token;
    // It's good practice to handle the case where the token might be null.
    if (token == null) {
      throw Exception('Authentication token not found.');
    }

    final response = await _dio.get(
      "http://localhost:8080/api/v1/product-variants",
      options: Options(headers: {'Authorization': 'Bearer $token'}),
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