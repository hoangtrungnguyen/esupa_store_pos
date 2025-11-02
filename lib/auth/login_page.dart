import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:esupa_store_pos/app/view/bloc/auth/auth_bloc.dart';
import 'package:esupa_store_pos/app/view/pages/page_router.dart' as page_router;
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authenticated: (token) {
              // Navigate to the home screen on success
              context.go(page_router.Path.home);
            },
            unauthenticated: (message) {
              // Show an error message if login fails
              if (message != null) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              }
            },
          );
        },
        builder: (context, state) {
          return state.whenOrNull(
                loading: () => Center(child: CircularProgressIndicator()),
              ) ??
              Center(
                child: SizedBox(
                  width: 400,
                  child: Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(height: 24),
                          TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {
                                // Add the LoginRequested event to the BLoC
                                context.read<AuthBloc>().add(
                                  AuthEvent.loginRequested(
                                    username: _emailController.text,
                                    password: _passwordController.text,
                                  ),
                                );
                              },
                              child: Text('Login'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
        },
      ),
    );
  }
}
