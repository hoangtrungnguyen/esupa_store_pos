// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentOrderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CurrentOrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CurrentOrderEvent()';
  }
}

/// @nodoc
class $CurrentOrderEventCopyWith<$Res> {
  $CurrentOrderEventCopyWith(
    CurrentOrderEvent _,
    $Res Function(CurrentOrderEvent) __,
  );
}

/// @nodoc

class _Started implements CurrentOrderEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CurrentOrderEvent.started()';
  }
}

/// @nodoc
class _$StartedCopyWith<$Res> implements $CurrentOrderEventCopyWith<$Res> {
  _$StartedCopyWith(_Started _, $Res Function(_Started) __);
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;
}

/// @nodoc

class _AddItem implements CurrentOrderEvent {
  const _AddItem(this.product);

  final Product product;

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddItemCopyWith<_AddItem> get copyWith =>
      __$AddItemCopyWithImpl<_AddItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddItem &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @override
  String toString() {
    return 'CurrentOrderEvent.addItem(product: $product)';
  }
}

/// @nodoc
abstract mixin class _$AddItemCopyWith<$Res>
    implements $CurrentOrderEventCopyWith<$Res> {
  factory _$AddItemCopyWith(_AddItem value, $Res Function(_AddItem) _then) =
      __$AddItemCopyWithImpl;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$AddItemCopyWithImpl<$Res> implements _$AddItemCopyWith<$Res> {
  __$AddItemCopyWithImpl(this._self, this._then);

  final _AddItem _self;
  final $Res Function(_AddItem) _then;

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? product = null}) {
    return _then(
      _AddItem(
        null == product
            ? _self.product
            : product // ignore: cast_nullable_to_non_nullable
                as Product,
      ),
    );
  }

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_self.product, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

/// @nodoc

class _RemoveItem implements CurrentOrderEvent {
  const _RemoveItem(this.productId);

  final String productId;

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveItemCopyWith<_RemoveItem> get copyWith =>
      __$RemoveItemCopyWithImpl<_RemoveItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveItem &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @override
  String toString() {
    return 'CurrentOrderEvent.removeItem(productId: $productId)';
  }
}

/// @nodoc
abstract mixin class _$RemoveItemCopyWith<$Res>
    implements $CurrentOrderEventCopyWith<$Res> {
  factory _$RemoveItemCopyWith(
    _RemoveItem value,
    $Res Function(_RemoveItem) _then,
  ) = __$RemoveItemCopyWithImpl;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$RemoveItemCopyWithImpl<$Res> implements _$RemoveItemCopyWith<$Res> {
  __$RemoveItemCopyWithImpl(this._self, this._then);

  final _RemoveItem _self;
  final $Res Function(_RemoveItem) _then;

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? productId = null}) {
    return _then(
      _RemoveItem(
        null == productId
            ? _self.productId
            : productId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _UpdateItemQuantity implements CurrentOrderEvent {
  const _UpdateItemQuantity(this.itemId, this.quantity);

  final String itemId;
  final int quantity;

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateItemQuantityCopyWith<_UpdateItemQuantity> get copyWith =>
      __$UpdateItemQuantityCopyWithImpl<_UpdateItemQuantity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateItemQuantity &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity);

  @override
  String toString() {
    return 'CurrentOrderEvent.updateItemQuantity(itemId: $itemId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class _$UpdateItemQuantityCopyWith<$Res>
    implements $CurrentOrderEventCopyWith<$Res> {
  factory _$UpdateItemQuantityCopyWith(
    _UpdateItemQuantity value,
    $Res Function(_UpdateItemQuantity) _then,
  ) = __$UpdateItemQuantityCopyWithImpl;
  @useResult
  $Res call({String itemId, int quantity});
}

/// @nodoc
class __$UpdateItemQuantityCopyWithImpl<$Res>
    implements _$UpdateItemQuantityCopyWith<$Res> {
  __$UpdateItemQuantityCopyWithImpl(this._self, this._then);

  final _UpdateItemQuantity _self;
  final $Res Function(_UpdateItemQuantity) _then;

  /// Create a copy of CurrentOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? itemId = null, Object? quantity = null}) {
    return _then(
      _UpdateItemQuantity(
        null == itemId
            ? _self.itemId
            : itemId // ignore: cast_nullable_to_non_nullable
                as String,
        null == quantity
            ? _self.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _ClearOrder implements CurrentOrderEvent {
  const _ClearOrder();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CurrentOrderEvent.clearOrder()';
  }
}

/// @nodoc
class _$ClearOrderCopyWith<$Res> implements $CurrentOrderEventCopyWith<$Res> {
  _$ClearOrderCopyWith(_ClearOrder _, $Res Function(_ClearOrder) __);
}

/// @nodoc
class __$ClearOrderCopyWithImpl<$Res> implements _$ClearOrderCopyWith<$Res> {
  __$ClearOrderCopyWithImpl(this._self, this._then);

  final _ClearOrder _self;
  final $Res Function(_ClearOrder) _then;
}

/// @nodoc

class _CheckoutOrder implements CurrentOrderEvent {
  const _CheckoutOrder();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckoutOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CurrentOrderEvent.checkoutOrder()';
  }
}

/// @nodoc
class _$CheckoutOrderCopyWith<$Res>
    implements $CurrentOrderEventCopyWith<$Res> {
  _$CheckoutOrderCopyWith(_CheckoutOrder _, $Res Function(_CheckoutOrder) __);
}

/// @nodoc
class __$CheckoutOrderCopyWithImpl<$Res>
    implements _$CheckoutOrderCopyWith<$Res> {
  __$CheckoutOrderCopyWithImpl(this._self, this._then);

  final _CheckoutOrder _self;
  final $Res Function(_CheckoutOrder) _then;
}

/// @nodoc
mixin _$CurrentOrderState {
  Order get order;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentOrderStateCopyWith<CurrentOrderState> get copyWith =>
      _$CurrentOrderStateCopyWithImpl<CurrentOrderState>(
        this as CurrentOrderState,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentOrderState &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @override
  String toString() {
    return 'CurrentOrderState(order: $order)';
  }
}

/// @nodoc
abstract mixin class $CurrentOrderStateCopyWith<$Res> {
  factory $CurrentOrderStateCopyWith(
    CurrentOrderState value,
    $Res Function(CurrentOrderState) _then,
  ) = _$CurrentOrderStateCopyWithImpl;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$CurrentOrderStateCopyWithImpl<$Res>
    implements $CurrentOrderStateCopyWith<$Res> {
  _$CurrentOrderStateCopyWithImpl(this._self, this._then);

  final CurrentOrderState _self;
  final $Res Function(CurrentOrderState) _then;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? order = null}) {
    return _then(
      _self.copyWith(
        order:
            null == order
                ? _self.order
                : order // ignore: cast_nullable_to_non_nullable
                    as Order,
      ),
    );
  }

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// @nodoc

class InitialCurrentOrderState implements CurrentOrderState {
  const InitialCurrentOrderState(this.order);

  @override
  final Order order;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InitialCurrentOrderStateCopyWith<InitialCurrentOrderState> get copyWith =>
      _$InitialCurrentOrderStateCopyWithImpl<InitialCurrentOrderState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialCurrentOrderState &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @override
  String toString() {
    return 'CurrentOrderState.initial(order: $order)';
  }
}

/// @nodoc
abstract mixin class $InitialCurrentOrderStateCopyWith<$Res>
    implements $CurrentOrderStateCopyWith<$Res> {
  factory $InitialCurrentOrderStateCopyWith(
    InitialCurrentOrderState value,
    $Res Function(InitialCurrentOrderState) _then,
  ) = _$InitialCurrentOrderStateCopyWithImpl;
  @override
  @useResult
  $Res call({Order order});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$InitialCurrentOrderStateCopyWithImpl<$Res>
    implements $InitialCurrentOrderStateCopyWith<$Res> {
  _$InitialCurrentOrderStateCopyWithImpl(this._self, this._then);

  final InitialCurrentOrderState _self;
  final $Res Function(InitialCurrentOrderState) _then;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? order = null}) {
    return _then(
      InitialCurrentOrderState(
        null == order
            ? _self.order
            : order // ignore: cast_nullable_to_non_nullable
                as Order,
      ),
    );
  }

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// @nodoc

class LoadingCurrentOrderState implements CurrentOrderState {
  const LoadingCurrentOrderState(this.order);

  @override
  final Order order;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadingCurrentOrderStateCopyWith<LoadingCurrentOrderState> get copyWith =>
      _$LoadingCurrentOrderStateCopyWithImpl<LoadingCurrentOrderState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingCurrentOrderState &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @override
  String toString() {
    return 'CurrentOrderState.loading(order: $order)';
  }
}

/// @nodoc
abstract mixin class $LoadingCurrentOrderStateCopyWith<$Res>
    implements $CurrentOrderStateCopyWith<$Res> {
  factory $LoadingCurrentOrderStateCopyWith(
    LoadingCurrentOrderState value,
    $Res Function(LoadingCurrentOrderState) _then,
  ) = _$LoadingCurrentOrderStateCopyWithImpl;
  @override
  @useResult
  $Res call({Order order});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$LoadingCurrentOrderStateCopyWithImpl<$Res>
    implements $LoadingCurrentOrderStateCopyWith<$Res> {
  _$LoadingCurrentOrderStateCopyWithImpl(this._self, this._then);

  final LoadingCurrentOrderState _self;
  final $Res Function(LoadingCurrentOrderState) _then;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? order = null}) {
    return _then(
      LoadingCurrentOrderState(
        null == order
            ? _self.order
            : order // ignore: cast_nullable_to_non_nullable
                as Order,
      ),
    );
  }

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// @nodoc

class LoadedCurrentOrderState implements CurrentOrderState {
  const LoadedCurrentOrderState(this.order, {this.checkoutMessage});

  @override
  final Order order;
  final String? checkoutMessage;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedCurrentOrderStateCopyWith<LoadedCurrentOrderState> get copyWith =>
      _$LoadedCurrentOrderStateCopyWithImpl<LoadedCurrentOrderState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCurrentOrderState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.checkoutMessage, checkoutMessage) ||
                other.checkoutMessage == checkoutMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, checkoutMessage);

  @override
  String toString() {
    return 'CurrentOrderState.loaded(order: $order, checkoutMessage: $checkoutMessage)';
  }
}

/// @nodoc
abstract mixin class $LoadedCurrentOrderStateCopyWith<$Res>
    implements $CurrentOrderStateCopyWith<$Res> {
  factory $LoadedCurrentOrderStateCopyWith(
    LoadedCurrentOrderState value,
    $Res Function(LoadedCurrentOrderState) _then,
  ) = _$LoadedCurrentOrderStateCopyWithImpl;
  @override
  @useResult
  $Res call({Order order, String? checkoutMessage});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$LoadedCurrentOrderStateCopyWithImpl<$Res>
    implements $LoadedCurrentOrderStateCopyWith<$Res> {
  _$LoadedCurrentOrderStateCopyWithImpl(this._self, this._then);

  final LoadedCurrentOrderState _self;
  final $Res Function(LoadedCurrentOrderState) _then;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? order = null, Object? checkoutMessage = freezed}) {
    return _then(
      LoadedCurrentOrderState(
        null == order
            ? _self.order
            : order // ignore: cast_nullable_to_non_nullable
                as Order,
        checkoutMessage:
            freezed == checkoutMessage
                ? _self.checkoutMessage
                : checkoutMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// @nodoc

class ErrorCurrentOrderState implements CurrentOrderState {
  const ErrorCurrentOrderState(this.order, this.message);

  @override
  final Order order;
  final String message;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCurrentOrderStateCopyWith<ErrorCurrentOrderState> get copyWith =>
      _$ErrorCurrentOrderStateCopyWithImpl<ErrorCurrentOrderState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorCurrentOrderState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, message);

  @override
  String toString() {
    return 'CurrentOrderState.error(order: $order, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorCurrentOrderStateCopyWith<$Res>
    implements $CurrentOrderStateCopyWith<$Res> {
  factory $ErrorCurrentOrderStateCopyWith(
    ErrorCurrentOrderState value,
    $Res Function(ErrorCurrentOrderState) _then,
  ) = _$ErrorCurrentOrderStateCopyWithImpl;
  @override
  @useResult
  $Res call({Order order, String message});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$ErrorCurrentOrderStateCopyWithImpl<$Res>
    implements $ErrorCurrentOrderStateCopyWith<$Res> {
  _$ErrorCurrentOrderStateCopyWithImpl(this._self, this._then);

  final ErrorCurrentOrderState _self;
  final $Res Function(ErrorCurrentOrderState) _then;

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? order = null, Object? message = null}) {
    return _then(
      ErrorCurrentOrderState(
        null == order
            ? _self.order
            : order // ignore: cast_nullable_to_non_nullable
                as Order,
        null == message
            ? _self.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }

  /// Create a copy of CurrentOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}
