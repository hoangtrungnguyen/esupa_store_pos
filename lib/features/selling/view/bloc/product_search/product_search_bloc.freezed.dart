// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductSearchEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductSearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductSearchEvent()';
  }
}

/// @nodoc
class $ProductSearchEventCopyWith<$Res> {
  $ProductSearchEventCopyWith(
    ProductSearchEvent _,
    $Res Function(ProductSearchEvent) __,
  );
}

/// @nodoc

class _SearchProducts implements ProductSearchEvent {
  const _SearchProducts(this.searchTerm, {this.category = "All Items"});

  final String searchTerm;
  @JsonKey()
  final String category;

  /// Create a copy of ProductSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchProductsCopyWith<_SearchProducts> get copyWith =>
      __$SearchProductsCopyWithImpl<_SearchProducts>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchProducts &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm, category);

  @override
  String toString() {
    return 'ProductSearchEvent.searchProducts(searchTerm: $searchTerm, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$SearchProductsCopyWith<$Res>
    implements $ProductSearchEventCopyWith<$Res> {
  factory _$SearchProductsCopyWith(
    _SearchProducts value,
    $Res Function(_SearchProducts) _then,
  ) = __$SearchProductsCopyWithImpl;
  @useResult
  $Res call({String searchTerm, String category});
}

/// @nodoc
class __$SearchProductsCopyWithImpl<$Res>
    implements _$SearchProductsCopyWith<$Res> {
  __$SearchProductsCopyWithImpl(this._self, this._then);

  final _SearchProducts _self;
  final $Res Function(_SearchProducts) _then;

  /// Create a copy of ProductSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? searchTerm = null, Object? category = null}) {
    return _then(
      _SearchProducts(
        null == searchTerm
            ? _self.searchTerm
            : searchTerm // ignore: cast_nullable_to_non_nullable
                as String,
        category:
            null == category
                ? _self.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _ClearSearch implements ProductSearchEvent {
  const _ClearSearch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductSearchEvent.clearSearch()';
  }
}

/// @nodoc
class _$ClearSearchCopyWith<$Res> implements $ProductSearchEventCopyWith<$Res> {
  _$ClearSearchCopyWith(_ClearSearch _, $Res Function(_ClearSearch) __);
}

/// @nodoc
class __$ClearSearchCopyWithImpl<$Res> implements _$ClearSearchCopyWith<$Res> {
  __$ClearSearchCopyWithImpl(this._self, this._then);

  final _ClearSearch _self;
  final $Res Function(_ClearSearch) _then;
}

/// @nodoc
mixin _$ProductSearchState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductSearchState()';
  }
}

/// @nodoc
class $ProductSearchStateCopyWith<$Res> {
  $ProductSearchStateCopyWith(
    ProductSearchState _,
    $Res Function(ProductSearchState) __,
  );
}

/// @nodoc

class InitialProductSearchState implements ProductSearchState {
  const InitialProductSearchState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialProductSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductSearchState.initial()';
  }
}

/// @nodoc
class $InitialProductSearchStateCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  $InitialProductSearchStateCopyWith(
    InitialProductSearchState _,
    $Res Function(InitialProductSearchState) __,
  );
}

/// @nodoc
class _$InitialProductSearchStateCopyWithImpl<$Res>
    implements $InitialProductSearchStateCopyWith<$Res> {
  _$InitialProductSearchStateCopyWithImpl(this._self, this._then);

  final InitialProductSearchState _self;
  final $Res Function(InitialProductSearchState) _then;
}

/// @nodoc

class LoadingProductSearchState implements ProductSearchState {
  const LoadingProductSearchState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingProductSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductSearchState.loading()';
  }
}

/// @nodoc
class $LoadingProductSearchStateCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  $LoadingProductSearchStateCopyWith(
    LoadingProductSearchState _,
    $Res Function(LoadingProductSearchState) __,
  );
}

/// @nodoc
class _$LoadingProductSearchStateCopyWithImpl<$Res>
    implements $LoadingProductSearchStateCopyWith<$Res> {
  _$LoadingProductSearchStateCopyWithImpl(this._self, this._then);

  final LoadingProductSearchState _self;
  final $Res Function(LoadingProductSearchState) _then;
}

/// @nodoc

class LoadedProductSearchState implements ProductSearchState {
  const LoadedProductSearchState({
    required final List<Product> allProducts,
    required final List<Product> filteredProducts,
    this.searchTerm = '',
    this.currentCategory = 'All Items',
  }) : _allProducts = allProducts,
       _filteredProducts = filteredProducts;

  final List<Product> _allProducts;
  List<Product> get allProducts {
    if (_allProducts is EqualUnmodifiableListView) return _allProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProducts);
  }

  final List<Product> _filteredProducts;
  List<Product> get filteredProducts {
    if (_filteredProducts is EqualUnmodifiableListView)
      return _filteredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredProducts);
  }

  @JsonKey()
  final String searchTerm;
  @JsonKey()
  final String currentCategory;

  /// Create a copy of ProductSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedProductSearchStateCopyWith<LoadedProductSearchState> get copyWith =>
      _$LoadedProductSearchStateCopyWithImpl<LoadedProductSearchState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedProductSearchState &&
            const DeepCollectionEquality().equals(
              other._allProducts,
              _allProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._filteredProducts,
              _filteredProducts,
            ) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.currentCategory, currentCategory) ||
                other.currentCategory == currentCategory));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_allProducts),
    const DeepCollectionEquality().hash(_filteredProducts),
    searchTerm,
    currentCategory,
  );

  @override
  String toString() {
    return 'ProductSearchState.loaded(allProducts: $allProducts, filteredProducts: $filteredProducts, searchTerm: $searchTerm, currentCategory: $currentCategory)';
  }
}

/// @nodoc
abstract mixin class $LoadedProductSearchStateCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  factory $LoadedProductSearchStateCopyWith(
    LoadedProductSearchState value,
    $Res Function(LoadedProductSearchState) _then,
  ) = _$LoadedProductSearchStateCopyWithImpl;
  @useResult
  $Res call({
    List<Product> allProducts,
    List<Product> filteredProducts,
    String searchTerm,
    String currentCategory,
  });
}

/// @nodoc
class _$LoadedProductSearchStateCopyWithImpl<$Res>
    implements $LoadedProductSearchStateCopyWith<$Res> {
  _$LoadedProductSearchStateCopyWithImpl(this._self, this._then);

  final LoadedProductSearchState _self;
  final $Res Function(LoadedProductSearchState) _then;

  /// Create a copy of ProductSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allProducts = null,
    Object? filteredProducts = null,
    Object? searchTerm = null,
    Object? currentCategory = null,
  }) {
    return _then(
      LoadedProductSearchState(
        allProducts:
            null == allProducts
                ? _self._allProducts
                : allProducts // ignore: cast_nullable_to_non_nullable
                    as List<Product>,
        filteredProducts:
            null == filteredProducts
                ? _self._filteredProducts
                : filteredProducts // ignore: cast_nullable_to_non_nullable
                    as List<Product>,
        searchTerm:
            null == searchTerm
                ? _self.searchTerm
                : searchTerm // ignore: cast_nullable_to_non_nullable
                    as String,
        currentCategory:
            null == currentCategory
                ? _self.currentCategory
                : currentCategory // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class ErrorProductSearchState implements ProductSearchState {
  const ErrorProductSearchState(this.message);

  final String message;

  /// Create a copy of ProductSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorProductSearchStateCopyWith<ErrorProductSearchState> get copyWith =>
      _$ErrorProductSearchStateCopyWithImpl<ErrorProductSearchState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorProductSearchState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProductSearchState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorProductSearchStateCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  factory $ErrorProductSearchStateCopyWith(
    ErrorProductSearchState value,
    $Res Function(ErrorProductSearchState) _then,
  ) = _$ErrorProductSearchStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorProductSearchStateCopyWithImpl<$Res>
    implements $ErrorProductSearchStateCopyWith<$Res> {
  _$ErrorProductSearchStateCopyWithImpl(this._self, this._then);

  final ErrorProductSearchState _self;
  final $Res Function(ErrorProductSearchState) _then;

  /// Create a copy of ProductSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? message = null}) {
    return _then(
      ErrorProductSearchState(
        null == message
            ? _self.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}
