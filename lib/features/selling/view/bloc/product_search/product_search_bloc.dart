import 'package:bloc/bloc.dart';
import 'package:esupa_store_pos/features/selling/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_search_bloc.freezed.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  final List<Product> _initialProducts = [
    Product(
      id: 'p1',
      name: 'Burger',
      description: 'Classic beef burger',
      price: 8.99,
      category: 'Food',
    ),
    Product(
      id: 'p2',
      name: 'Pizza',
      description: 'Pepperoni pizza',
      price: 12.99,
      category: 'Food',
    ),
    Product(
      id: 'p3',
      name: 'Fries',
      description: 'Large',
      price: 4.99,
      category: 'Snacks',
    ),
    Product(
      id: 'p4',
      name: 'Soda',
      description: 'Medium Cola',
      price: 2.49,
      category: 'Beverages',
    ),
    Product(
      id: 'p5',
      name: 'Ice Cream',
      description: 'Vanilla',
      price: 3.99,
      category: 'Desserts',
    ),
    Product(
      id: 'p6',
      name: 'Chicken Sandwich',
      description: 'Grilled chicken with lettuce',
      price: 9.50,
      category: 'Food',
    ),
    Product(
      id: 'p7',
      name: 'Coffee',
      description: 'Espresso',
      price: 3.00,
      category: 'Beverages',
    ),
    Product(
      id: 'p8',
      name: 'Donut',
      description: 'Chocolate glazed',
      price: 1.50,
      category: 'Desserts',
    ),
    Product(
      id: 'p9',
      name: 'Nachos',
      description: 'Cheese and jalapeños',
      price: 6.75,
      category: 'Snacks',
    ),
  ];

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
