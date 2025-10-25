import 'package:dio/dio.dart';

class AuthRepository {
  final Dio _dio;

  // You would typically configure Dio with a base URL
  AuthRepository({Dio? dio})
      : _dio = dio ??
      Dio(BaseOptions(baseUrl: 'http://localhost:8080'));

  Future<String> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/api/auth/login', // Your login endpoint
        data: {
          'username': username,
          'password': password,
        },
      );

      // Assuming your API returns a JSON object with a 'token' field
      if (response.statusCode == 200 && response.data['token'] != null) {
        final String token = response.data['token'];
        // You can save the token to secure storage here if needed
        return token;
      } else {
        // Handle non-200 responses or missing token
        throw Exception('Login failed: Invalid response from server.');
      }
    } on DioException catch (e) {
      // Handle Dio-specific errors (e.g., network issues, 401 Unauthorized)
      final errorMessage = e.response?.data['message'] ??
          'An unknown error occurred.';
      throw Exception('Login failed: $errorMessage');
    } catch (e) {
      // Handle other potential errors
      throw Exception('An unexpected error occurred.');
    }
  }

  Future<void> logout() async {
    // Implement logout logic if needed (e.g., clear token from storage)
  }
}