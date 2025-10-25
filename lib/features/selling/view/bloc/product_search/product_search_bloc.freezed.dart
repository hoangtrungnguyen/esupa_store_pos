// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [ProductSearchEvent].
extension ProductSearchEventPatterns on ProductSearchEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchProducts() when searchProducts != null:
        return searchProducts(_that);
      case _ClearSearch() when clearSearch != null:
        return clearSearch(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    final _that = this;
    switch (_that) {
      case _SearchProducts():
        return searchProducts(_that);
      case _ClearSearch():
        return clearSearch(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) {
    final _that = this;
    switch (_that) {
      case _SearchProducts() when searchProducts != null:
        return searchProducts(_that);
      case _ClearSearch() when clearSearch != null:
        return clearSearch(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, String category)? searchProducts,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchProducts() when searchProducts != null:
        return searchProducts(_that.searchTerm, _that.category);
      case _ClearSearch() when clearSearch != null:
        return clearSearch();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, String category)
    searchProducts,
    required TResult Function() clearSearch,
  }) {
    final _that = this;
    switch (_that) {
      case _SearchProducts():
        return searchProducts(_that.searchTerm, _that.category);
      case _ClearSearch():
        return clearSearch();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm, String category)? searchProducts,
    TResult? Function()? clearSearch,
  }) {
    final _that = this;
    switch (_that) {
      case _SearchProducts() when searchProducts != null:
        return searchProducts(_that.searchTerm, _that.category);
      case _ClearSearch() when clearSearch != null:
        return clearSearch();
      case _:
        return null;
    }
  }
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
        category: null == category
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

/// Adds pattern-matching-related methods to [ProductSearchState].
extension ProductSearchStatePatterns on ProductSearchState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductSearchState value)? initial,
    TResult Function(LoadingProductSearchState value)? loading,
    TResult Function(LoadedProductSearchState value)? loaded,
    TResult Function(ErrorProductSearchState value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialProductSearchState() when initial != null:
        return initial(_that);
      case LoadingProductSearchState() when loading != null:
        return loading(_that);
      case LoadedProductSearchState() when loaded != null:
        return loaded(_that);
      case ErrorProductSearchState() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProductSearchState value) initial,
    required TResult Function(LoadingProductSearchState value) loading,
    required TResult Function(LoadedProductSearchState value) loaded,
    required TResult Function(ErrorProductSearchState value) error,
  }) {
    final _that = this;
    switch (_that) {
      case InitialProductSearchState():
        return initial(_that);
      case LoadingProductSearchState():
        return loading(_that);
      case LoadedProductSearchState():
        return loaded(_that);
      case ErrorProductSearchState():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductSearchState value)? initial,
    TResult? Function(LoadingProductSearchState value)? loading,
    TResult? Function(LoadedProductSearchState value)? loaded,
    TResult? Function(ErrorProductSearchState value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case InitialProductSearchState() when initial != null:
        return initial(_that);
      case LoadingProductSearchState() when loading != null:
        return loading(_that);
      case LoadedProductSearchState() when loaded != null:
        return loaded(_that);
      case ErrorProductSearchState() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Product> allProducts,
      List<Product> filteredProducts,
      String searchTerm,
      String currentCategory,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialProductSearchState() when initial != null:
        return initial();
      case LoadingProductSearchState() when loading != null:
        return loading();
      case LoadedProductSearchState() when loaded != null:
        return loaded(
          _that.allProducts,
          _that.filteredProducts,
          _that.searchTerm,
          _that.currentCategory,
        );
      case ErrorProductSearchState() when error != null:
        return error(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Product> allProducts,
      List<Product> filteredProducts,
      String searchTerm,
      String currentCategory,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case InitialProductSearchState():
        return initial();
      case LoadingProductSearchState():
        return loading();
      case LoadedProductSearchState():
        return loaded(
          _that.allProducts,
          _that.filteredProducts,
          _that.searchTerm,
          _that.currentCategory,
        );
      case ErrorProductSearchState():
        return error(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Product> allProducts,
      List<Product> filteredProducts,
      String searchTerm,
      String currentCategory,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case InitialProductSearchState() when initial != null:
        return initial();
      case LoadingProductSearchState() when loading != null:
        return loading();
      case LoadedProductSearchState() when loaded != null:
        return loaded(
          _that.allProducts,
          _that.filteredProducts,
          _that.searchTerm,
          _that.currentCategory,
        );
      case ErrorProductSearchState() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
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
        allProducts: null == allProducts
            ? _self._allProducts
            : allProducts // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        filteredProducts: null == filteredProducts
            ? _self._filteredProducts
            : filteredProducts // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        searchTerm: null == searchTerm
            ? _self.searchTerm
            : searchTerm // ignore: cast_nullable_to_non_nullable
                  as String,
        currentCategory: null == currentCategory
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
