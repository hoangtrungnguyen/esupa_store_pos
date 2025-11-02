import 'package:data_layer/src/models/cash_payment_request.dart';
import 'package:dio/dio.dart';

// Assuming CashPaymentRequest is in this path. Adjust if necessary.

/// Abstract class for handling payment-related API calls.
abstract class PaymentRepository {
  /// Processes a cash payment for a given order.
  ///
  /// This method corresponds to calling the `/api/v1/payments/cash` endpoint.
  /// It takes a [CashPaymentRequest] object which includes the order ID
  /// and optional notes.
  Future<void> processCashPayment(CashPaymentRequest request);
}

/// Implementation of the [PaymentRepository] that communicates with a remote API using Dio.
class PaymentRepositoryImpl implements PaymentRepository {
  final Dio _dio;

  PaymentRepositoryImpl({Dio? dio, String? baseUrl})
      : _dio = dio ??
      Dio(BaseOptions(
        baseUrl: baseUrl ?? 'localhost:8080', // Replace with your actual base URL
        headers: {'Content-Type': 'application/json'},
      ));

  @override
  Future<void> processCashPayment(CashPaymentRequest request) async {
    try {
      final response = await _dio.post(
        '/api/v1/payments/cash',
        data: request.toJson(),
      );

      // Dio considers status codes in the 2xx range as successful by default,
      // and will throw a DioException for other codes, so an explicit status check is often not needed
      // unless you want to handle specific success codes differently.
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Successfully processed the payment
        return;
      }
    } on DioException catch (e) {
      // Handle Dio-specific errors (e.g., network issues, 4xx/5xx responses)
      // You can inspect e.response, e.type, e.message for more details.
      throw Exception('Failed to process cash payment: ${e.message}');
    } catch (e) {
      // Handle any other unexpected errors
      throw Exception('An unexpected error occurred: $e');
    }
  }
}