import 'package:data_layer/data_layer.dart' as data_layer;
import 'package:data_layer/data_layer.dart' show ProductRepository;
import 'package:esupa_store_pos/features/selling/domain/models/product.dart';
import 'package:get_it/get_it.dart';

class SearchProductService {
  Future<List<Product>> getAllData() {
    return GetIt.I.get<ProductRepository>().findAll().then((data) {
      return data
          .map(
            (data_layer.Product e) => Product(
              id: '${e.id}',
              name: e.name,
              description: e.description,
              price: e.price,
              category: e.category,
            ),
          )
          .toList();
    });
  }
}
