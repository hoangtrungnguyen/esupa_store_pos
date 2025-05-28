import 'package:bloc/bloc.dart';
import 'package:esupa_store_pos/features/selling/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data.dart';

part 'product_search_bloc.freezed.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  final List<Product> _initialProducts = ProductDataSource().data;

  ProductSearchBloc() : super(const ProductSearchState.initial()) {
    on<_SearchProducts>((event, emit) {
      emit(const ProductSearchState.loading());

      List<Product> productsToFilter = _initialProducts;

      if (event.category != 'All Items') {
        productsToFilter =
            _initialProducts
                .where((p) => p.category == event.category)
                .toList();
      }

      final filtered =
          productsToFilter.where((product) {
            final searchTermLower = event.searchTerm.toLowerCase();
            return product.name.toLowerCase().contains(searchTermLower) ||
                product.description.toLowerCase().contains(searchTermLower);
          }).toList();

      emit(
        ProductSearchState.loaded(
          allProducts: _initialProducts,
          filteredProducts: filtered,
          searchTerm: event.searchTerm,
          currentCategory: event.category,
        ),
      );
    });

    on<_ClearSearch>((event, emit) {
      emit(
        ProductSearchState.loaded(
          allProducts: _initialProducts,
          filteredProducts: _initialProducts,
          searchTerm: '',
          currentCategory: 'All Items',
        ),
      );
    });

    // Initialize with all products
    add(const ProductSearchEvent.searchProducts('', category: 'All Items'));
  }
}
