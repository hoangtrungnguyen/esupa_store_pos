part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  // On success, you might want to hold user data or a token
  const factory AuthState.authenticated(
      {required String token}) = _Authenticated;

  // On failure, include an error message to show the user
  const factory AuthState.unauthenticated({String? message}) = _Unauthenticated;
}