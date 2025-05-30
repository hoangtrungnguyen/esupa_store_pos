import 'package:bloc/bloc.dart';
import 'package:esupa_store_pos/features/selling/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../service/service.dart';

part 'product_search_bloc.freezed.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  ProductSearchBloc() : super(const ProductSearchState.initial()) {
    on<_SearchProducts>((event, emit) async {
      emit(const ProductSearchState.loading());

      final List<Product> initialProducts =
          await SearchProductService().getAllData();

      List<Product> productsToFilter = initialProducts;

      if (event.category != 'All Items') {
        productsToFilter =
            initialProducts.where((p) => p.category == event.category).toList();
      }

      final filtered =
          productsToFilter.where((product) {
            final searchTermLower = event.searchTerm.toLowerCase();
            return product.name.toLowerCase().contains(searchTermLower) ||
                product.description.toLowerCase().contains(searchTermLower);
          }).toList();

      emit(
        ProductSearchState.loaded(
          allProducts: initialProducts,
          filteredProducts: filtered,
          searchTerm: event.searchTerm,
          currentCategory: event.category,
        ),
      );
    });

    on<_ClearSearch>((event, emit) async {
      emit(const ProductSearchState.loading());

      final List<Product> initialProducts =
          await SearchProductService().getAllData();

      emit(
        ProductSearchState.loaded(
          allProducts: initialProducts,
          filteredProducts: initialProducts,
          searchTerm: '',
          currentCategory: 'All Items',
        ),
      );
    });

    // Initialize with all products
    add(const ProductSearchEvent.searchProducts('', category: 'All Items'));
  }
}
