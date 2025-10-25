// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkEvent()';
  }
}

/// @nodoc
class $NetworkEventCopyWith<$Res> {
  $NetworkEventCopyWith(NetworkEvent _, $Res Function(NetworkEvent) __);
}

/// Adds pattern-matching-related methods to [NetworkEvent].
extension NetworkEventPatterns on NetworkEvent {
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
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _ConnectivityChanged() when connectivityChanged != null:
        return connectivityChanged(_that);
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
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _ConnectivityChanged():
        return connectivityChanged(_that);
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
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _ConnectivityChanged() when connectivityChanged != null:
        return connectivityChanged(_that);
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
    TResult Function(bool isConnected)? connectivityChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _ConnectivityChanged() when connectivityChanged != null:
        return connectivityChanged(_that.isConnected);
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
    required TResult Function() started,
    required TResult Function(bool isConnected) connectivityChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _ConnectivityChanged():
        return connectivityChanged(_that.isConnected);
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
    TResult? Function()? started,
    TResult? Function(bool isConnected)? connectivityChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _ConnectivityChanged() when connectivityChanged != null:
        return connectivityChanged(_that.isConnected);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements NetworkEvent {
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
    return 'NetworkEvent.started()';
  }
}

/// @nodoc
class _$StartedCopyWith<$Res> implements $NetworkEventCopyWith<$Res> {
  _$StartedCopyWith(_Started _, $Res Function(_Started) __);
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;
}

/// @nodoc

class _ConnectivityChanged implements NetworkEvent {
  const _ConnectivityChanged({required this.isConnected});

  final bool isConnected;

  /// Create a copy of NetworkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConnectivityChangedCopyWith<_ConnectivityChanged> get copyWith =>
      __$ConnectivityChangedCopyWithImpl<_ConnectivityChanged>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConnectivityChanged &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @override
  String toString() {
    return 'NetworkEvent.connectivityChanged(isConnected: $isConnected)';
  }
}

/// @nodoc
abstract mixin class _$ConnectivityChangedCopyWith<$Res>
    implements $NetworkEventCopyWith<$Res> {
  factory _$ConnectivityChangedCopyWith(
    _ConnectivityChanged value,
    $Res Function(_ConnectivityChanged) _then,
  ) = __$ConnectivityChangedCopyWithImpl;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$ConnectivityChangedCopyWithImpl<$Res>
    implements _$ConnectivityChangedCopyWith<$Res> {
  __$ConnectivityChangedCopyWithImpl(this._self, this._then);

  final _ConnectivityChanged _self;
  final $Res Function(_ConnectivityChanged) _then;

  /// Create a copy of NetworkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? isConnected = null}) {
    return _then(
      _ConnectivityChanged(
        isConnected: null == isConnected
            ? _self.isConnected
            : isConnected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
mixin _$NetworkState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState()';
  }
}

/// @nodoc
class $NetworkStateCopyWith<$Res> {
  $NetworkStateCopyWith(NetworkState _, $Res Function(NetworkState) __);
}

/// Adds pattern-matching-related methods to [NetworkState].
extension NetworkStatePatterns on NetworkState {
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
    TResult Function(_Initial value)? initial,
    TResult Function(Online value)? online,
    TResult Function(Offline value)? offline,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Online() when online != null:
        return online(_that);
      case Offline() when offline != null:
        return offline(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Online value) online,
    required TResult Function(Offline value) offline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case Online():
        return online(_that);
      case Offline():
        return offline(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(Online value)? online,
    TResult? Function(Offline value)? offline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Online() when online != null:
        return online(_that);
      case Offline() when offline != null:
        return offline(_that);
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
    TResult Function(bool isInitialize)? initial,
    TResult Function()? online,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that.isInitialize);
      case Online() when online != null:
        return online();
      case Offline() when offline != null:
        return offline();
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
    required TResult Function(bool isInitialize) initial,
    required TResult Function() online,
    required TResult Function() offline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that.isInitialize);
      case Online():
        return online();
      case Offline():
        return offline();
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
    TResult? Function(bool isInitialize)? initial,
    TResult? Function()? online,
    TResult? Function()? offline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that.isInitialize);
      case Online() when online != null:
        return online();
      case Offline() when offline != null:
        return offline();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements NetworkState {
  const _Initial({this.isInitialize = true});

  @JsonKey()
  final bool isInitialize;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.isInitialize, isInitialize) ||
                other.isInitialize == isInitialize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitialize);

  @override
  String toString() {
    return 'NetworkState.initial(isInitialize: $isInitialize)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @useResult
  $Res call({bool isInitialize});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? isInitialize = null}) {
    return _then(
      _Initial(
        isInitialize: null == isInitialize
            ? _self.isInitialize
            : isInitialize // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class Online implements NetworkState {
  const Online();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Online);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState.online()';
  }
}

/// @nodoc
class $OnlineCopyWith<$Res> implements $NetworkStateCopyWith<$Res> {
  $OnlineCopyWith(Online _, $Res Function(Online) __);
}

/// @nodoc
class _$OnlineCopyWithImpl<$Res> implements $OnlineCopyWith<$Res> {
  _$OnlineCopyWithImpl(this._self, this._then);

  final Online _self;
  final $Res Function(Online) _then;
}

/// @nodoc

class Offline implements NetworkState {
  const Offline();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState.offline()';
  }
}

/// @nodoc
class $OfflineCopyWith<$Res> implements $NetworkStateCopyWith<$Res> {
  $OfflineCopyWith(Offline _, $Res Function(Offline) __);
}

/// @nodoc
class _$OfflineCopyWithImpl<$Res> implements $OfflineCopyWith<$Res> {
  _$OfflineCopyWithImpl(this._self, this._then);

  final Offline _self;
  final $Res Function(Offline) _then;
}
