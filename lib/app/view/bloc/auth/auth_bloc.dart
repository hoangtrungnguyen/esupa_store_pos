import 'package:bloc/bloc.dart';
import 'package:esupa_store_pos/data_source/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Make sure to import your repository

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // 1. Add the AuthRepository as a dependency
  final AuthRepository _authRepository;

  // 2. Update the constructor to accept the repository
  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.initial()) {

    // 3. Implement the handler for the LoginRequested event
    on<_LoginRequested>((event, emit) async {
      // Immediately emit a loading state to show a spinner in the UI
      emit(const AuthState.loading());
      try {
        // Call the repository's login method
        final token = await _authRepository.login(
          username: event.username,
          password: event.password,
        );
        // If successful, emit the authenticated state with the token
        emit(AuthState.authenticated(token: token));
      } catch (e) {
        // If an error occurs, emit the unauthenticated state with an error message
        emit(AuthState.unauthenticated(message: e.toString()));
      }
    });

    // (Optional) Implement the logout handler
    on<_LogoutRequested>((event, emit) async {
      await _authRepository.logout();
      emit(const AuthState.unauthenticated());
    });
  }
}