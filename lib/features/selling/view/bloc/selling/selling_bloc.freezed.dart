// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selling_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellingEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SellingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SellingEvent()';
  }
}

/// @nodoc
class $SellingEventCopyWith<$Res> {
  $SellingEventCopyWith(SellingEvent _, $Res Function(SellingEvent) __);
}

/// Adds pattern-matching-related methods to [SellingEvent].
extension SellingEventPatterns on SellingEvent {
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
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
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
    required TResult Function(_Started value) started,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
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
    TResult? Function(_Started value)? started,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
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
    TResult Function()? started,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
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
  TResult when<TResult extends Object?>({required TResult Function() started}) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
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
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? started}) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements SellingEvent {
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
    return 'SellingEvent.started()';
  }
}

/// @nodoc
class _$StartedCopyWith<$Res> implements $SellingEventCopyWith<$Res> {
  _$StartedCopyWith(_Started _, $Res Function(_Started) __);
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;
}

/// @nodoc
mixin _$SellingState {
  Customer? get customer;
  User get user;
  Session get session;

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SellingStateCopyWith<SellingState> get copyWith =>
      _$SellingStateCopyWithImpl<SellingState>(
        this as SellingState,
        _$identity,
      );

  /// Serializes this SellingState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellingState &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, user, session);

  @override
  String toString() {
    return 'SellingState(customer: $customer, user: $user, session: $session)';
  }
}

/// @nodoc
abstract mixin class $SellingStateCopyWith<$Res> {
  factory $SellingStateCopyWith(
    SellingState value,
    $Res Function(SellingState) _then,
  ) = _$SellingStateCopyWithImpl;
  @useResult
  $Res call({Customer? customer, User user, Session session});

  $CustomerCopyWith<$Res>? get customer;
  $UserCopyWith<$Res> get user;
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$SellingStateCopyWithImpl<$Res> implements $SellingStateCopyWith<$Res> {
  _$SellingStateCopyWithImpl(this._self, this._then);

  final SellingState _self;
  final $Res Function(SellingState) _then;

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? user = null,
    Object? session = null,
  }) {
    return _then(
      _self.copyWith(
        customer: freezed == customer
            ? _self.customer
            : customer // ignore: cast_nullable_to_non_nullable
                  as Customer?,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        session: null == session
            ? _self.session
            : session // ignore: cast_nullable_to_non_nullable
                  as Session,
      ),
    );
  }

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_self.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_self.customer!, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_self.session, (value) {
      return _then(_self.copyWith(session: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SellingState].
extension SellingStatePatterns on SellingState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SellingState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellingState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SellingState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingState():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SellingState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Customer? customer, User user, Session session)?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellingState() when $default != null:
        return $default(_that.customer, _that.user, _that.session);
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
  TResult when<TResult extends Object?>(
    TResult Function(Customer? customer, User user, Session session) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingState():
        return $default(_that.customer, _that.user, _that.session);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Customer? customer, User user, Session session)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingState() when $default != null:
        return $default(_that.customer, _that.user, _that.session);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SellingState extends SellingState {
  const _SellingState({
    this.customer,
    required this.user,
    required this.session,
  }) : super._();
  factory _SellingState.fromJson(Map<String, dynamic> json) =>
      _$SellingStateFromJson(json);

  @override
  final Customer? customer;
  @override
  final User user;
  @override
  final Session session;

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SellingStateCopyWith<_SellingState> get copyWith =>
      __$SellingStateCopyWithImpl<_SellingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SellingStateToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellingState &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, user, session);

  @override
  String toString() {
    return 'SellingState(customer: $customer, user: $user, session: $session)';
  }
}

/// @nodoc
abstract mixin class _$SellingStateCopyWith<$Res>
    implements $SellingStateCopyWith<$Res> {
  factory _$SellingStateCopyWith(
    _SellingState value,
    $Res Function(_SellingState) _then,
  ) = __$SellingStateCopyWithImpl;
  @override
  @useResult
  $Res call({Customer? customer, User user, Session session});

  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$SellingStateCopyWithImpl<$Res>
    implements _$SellingStateCopyWith<$Res> {
  __$SellingStateCopyWithImpl(this._self, this._then);

  final _SellingState _self;
  final $Res Function(_SellingState) _then;

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customer = freezed,
    Object? user = null,
    Object? session = null,
  }) {
    return _then(
      _SellingState(
        customer: freezed == customer
            ? _self.customer
            : customer // ignore: cast_nullable_to_non_nullable
                  as Customer?,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        session: null == session
            ? _self.session
            : session // ignore: cast_nullable_to_non_nullable
                  as Session,
      ),
    );
  }

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_self.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_self.customer!, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of SellingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_self.session, (value) {
      return _then(_self.copyWith(session: value));
    });
  }
}
