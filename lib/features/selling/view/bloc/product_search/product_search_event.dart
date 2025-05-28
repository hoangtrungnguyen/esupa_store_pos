part of 'product_search_bloc.dart';

@freezed
class ProductSearchEvent with _$ProductSearchEvent {
  const factory ProductSearchEvent.searchProducts(
    String searchTerm, {
    @Default("All Items") String category,
  }) = _SearchProducts;

  const factory ProductSearchEvent.clearSearch() = _ClearSearch;
}
