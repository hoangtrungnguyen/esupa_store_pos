part of 'product_search_bloc.dart';

@freezed
class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState.initial() = InitialProductSearchState;

  const factory ProductSearchState.loading() = LoadingProductSearchState;

  const factory ProductSearchState.loaded({
    required List<Product> allProducts,
    required List<Product> filteredProducts,
    @Default('') String searchTerm,
    @Default('All Items') String currentCategory,
  }) = LoadedProductSearchState;

  const factory ProductSearchState.error(String message) =
      ErrorProductSearchState;
}
