import 'package:data_layer/data_layer.dart';
import 'package:data_layer/src/data_sources/postgres/product_data_source.dart'
    show ProductDataSource;

class PostgresProductRepositoryImpl extends ProductRepository {
  PostgresProductRepositoryImpl(this._productDataSource);

  ProductDataSource _productDataSource;

  Future<List<Product>> findAll() async {
    await _productDataSource.query();

    return [];
  }
}
