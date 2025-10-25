// import 'dart:developer';
//
// import 'package:dio/dio.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:internal_app/aliases.dart';
// import 'package:internal_app/features/auth/service/secure_storage_service.dart';
// import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
// import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
//
// typedef OnSaveNewTokens = Future<void> Function({
// required String refreshToken,
// required String accessToken,
// });
// typedef OnUnauthorized = Future Function();
//
// typedef OnSaveNewAuth = Future Function(Map<String, dynamic> responseUserModel);
//
// class LocalStoreApiSource {
//   final Dio _dio;
//
//   @visibleForTesting
//   Dio get dio => _dio;
//
//   final TalkerDioLogger dioTalker = TalkerDioLogger(
//     settings: const TalkerDioLoggerSettings(
//       printResponseData: true,
//       printRequestData: true,
//       printResponseHeaders: false,
//       printRequestHeaders: true,
//     ),
//   );
//
//   // Constructor
//   LocalStoreApiSource({
//     required String baseUrl,
//     Map<String, dynamic>? headers,
//     String? token,
//     Dio? dio,
//     OnSaveNewTokens? onSaveNewTokens,
//     OnUnauthorized? onUnauthorized,
//     OnSaveNewAuth? onSaveNewAuth,
//   }) : _dio = dio ??
//       Dio(
//         BaseOptions(
//           baseUrl: baseUrl,
//           headers: headers ?? {'Content-Type': 'application/json'},
//           connectTimeout: const Duration(seconds: 10),
//           receiveTimeout: const Duration(seconds: 10),
//         ),
//       ) {
//     _dio.interceptors.add(dioTalker);
//
//     setAuthorizationToken(token);
//
//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           if (options.path.contains('api/auth/logout')) {
//             talker.info('Log Out');
//             // This probably should not just return, but proceed.
//             // Consider what the intended behavior is.
//             // For now, letting it proceed.
//             return handler.next(options);
//           }
//           return handler.next(options);
//         },
//         onError: (err, handler) async {
//           await onInterceptorErrorCallback(
//             err,
//             handler,
//             onSaveNewTokens: onSaveNewTokens,
//             onUnauthorized: onUnauthorized,
//             onSaveNewAuth: onSaveNewAuth,
//           );
//         },
//       ),
//     );
//   }
//
//   // Generic GET request
//   Future<Response<T>> get<T>(String path, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       final response = await dio.get<T>(
//         path,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } on DioException catch (e) {
//       log('DioException in GET request to $path: ${e.message}');
//       throw _handleDioError(e);
//     } catch (e) {
//       log('Unexpected error in GET request to $path: $e');
//       throw Exception('An unexpected error occurred: $e');
//     }
//   }
//
//   // Generic POST request
//   Future<Response<T>> post<T>(String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       final response = await dio.post<T>(
//         path,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } on DioException catch (e) {
//       log('DioException in POST request to $path: ${e.message}');
//       rethrow;
//     } catch (e) {
//       log('Unexpected error in POST request to $path: $e');
//       throw Exception('An unexpected error occurred: $e');
//     }
//   }
//
//   // Generic PUT request
//   Future<Response<T>> put<T>(String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       final response = await dio.put<T>(
//         path,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } on DioException catch (e, stackTrace) {
//       log(
//         'DioException in PUT request to $path: ${e.message}',
//         stackTrace: stackTrace,
//       );
//       rethrow;
//     } catch (e) {
//       log('Unexpected error in PUT request to $path: $e');
//       throw Exception('An unexpected error occurred: $e');
//     }
//   }
//
//   // Generic DELETE request
//   Future<Response<T>> delete<T>(String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//   }) async {
//     try {
//       final response = await dio.delete<T>(
//         path,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//       );
//       return response;
//     } on DioException catch (e) {
//       log('DioException in DELETE request to $path: ${e.message}');
//       rethrow;
//     } catch (e) {
//       log('Unexpected error in DELETE request to $path: $e');
//       throw Exception('An unexpected error occurred: $e');
//     }
//   }
//
//   // Generic PATCH request
//   Future<Response<T>> patch<T>(String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//   }) async {
//     try {
//       final response = await dio.patch<T>(
//         path,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//       );
//       return response;
//     } on DioException catch (e) {
//       log('DioException in PATCH request to $path: ${e.message}');
//       rethrow;
//     } catch (e) {
//       log('Unexpected error in PATCH request to $path: $e');
//       throw Exception('An unexpected error occurred: $e');
//     }
//   }
//
//   Exception _handleDioError(DioException dioError) {
//     String errorMessage;
//     switch (dioError.type) {
//       case DioExceptionType.connectionTimeout:
//         errorMessage = "Connection timed out.";
//         break;
//       case DioExceptionType.sendTimeout:
//         errorMessage = "Send timed out.";
//         break;
//       case DioExceptionType.receiveTimeout:
//         errorMessage = "Receive timed out.";
//         break;
//       case DioExceptionType.badResponse:
//         errorMessage =
//         "Received invalid status code: ${dioError.response?.statusCode}";
//         break;
//       case DioExceptionType.cancel:
//         errorMessage = "Request to API server was cancelled.";
//         break;
//       case DioExceptionType.connectionError:
//         errorMessage =
//         "Connection error. Please check your internet connection.";
//         break;
//       case DioExceptionType.unknown:
//         errorMessage = "An unexpected error occurred: ${dioError.message}";
//         break;
//       default:
//         errorMessage = "Something went wrong: ${dioError.message}";
//         break;
//     }
//     log('errorMessage $errorMessage');
//     return Exception(errorMessage);
//   }
//
//   void setAuthorizationToken(String? token) {
//     if (token != null && token.isNotEmpty) {
//       dio.options.headers['Authorization'] = 'Bearer $token';
//     } else {
//       dio.options.headers.remove('Authorization');
//     }
//   }
//
//   void setContentTypeMultipartFormData() {
//     dio.options.headers['Content-Type'] = 'multipart/form-data';
//   }
//
//   void removeContentTypeMultipartFormData() {
//     dio.options.headers['Content-Type'] = 'application/json';
//   }
//
//   void clearAuthorizationToken() {
//     dio.options.headers.remove('Authorization');
//   }
//
//   void addInterceptor(Interceptor interceptor) {
//     dio.interceptors.add(interceptor);
//   }
//
//   Future onInterceptorErrorCallback(DioException err,
//       ErrorInterceptorHandler handler, {
//         OnSaveNewTokens? onSaveNewTokens,
//         OnUnauthorized? onUnauthorized,
//         OnSaveNewAuth? onSaveNewAuth,
//       }) async {
//     if (err.response?.statusCode == 401) {
//       try {
//         final String? currentRefreshToken =
//             (await getIt.get<SecureStorageService>().getToken())?.refreshToken;
//         if (currentRefreshToken == null) {
//           onUnauthorized?.call();
//           return handler.next(err);
//         }
//
//         final refreshDio = Dio(
//           BaseOptions(
//             baseUrl: _dio.options.baseUrl,
//             headers: {'Content-Type': 'application/json'},
//             connectTimeout: const Duration(seconds: 10),
//             receiveTimeout: const Duration(seconds: 10),
//           ),
//         );
//         refreshDio.interceptors.add(dioTalker);
//
//         talker.info('Call refresh token API');
//         final refreshResponse = await refreshDio.post(
//           '/auth/refresh',
//           options: Options(
//             headers: {
//               'Authorization': 'Bearer $currentRefreshToken',
//               'accept': '*/*',
//             },
//           ),
//         );
//
//         if (refreshResponse.statusCode == 200) {
//           talker.log('call /auth/refresh success 🍕');
//           final newAccessToken =
//           refreshResponse.data?['data']['tokens']['accessToken'];
//           final newRefreshToken =
//           refreshResponse.data?['data']['tokens']['refreshToken'];
//
//           if (newAccessToken != null && newRefreshToken != null) {
//             onSaveNewTokens?.call(
//               accessToken: newAccessToken,
//               refreshToken: newRefreshToken,
//             );
//
//             await onSaveNewAuth?.call(refreshResponse.data?['data']['user']);
//
//             setAuthorizationToken(newAccessToken);
//
//             final requestOptions = err.requestOptions;
//             requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
//
//             final response = await _dio.request(
//               requestOptions.path,
//               data: requestOptions.data,
//               queryParameters: requestOptions.queryParameters,
//               options: Options(
//                 method: requestOptions.method,
//                 headers: requestOptions.headers,
//               ),
//             );
//             return handler.resolve(response);
//           }
//         }
//         // If refresh fails or tokens are missing, fall through to call onUnauthorized
//         onUnauthorized?.call();
//         return handler.next(err);
//       } on DioException catch (refreshErr) {
//         log('Refresh token failed: ${refreshErr.message}');
//         onUnauthorized?.call();
//         return handler.next(err);
//       } catch (e) {
//         log('Unexpected error during token refresh: $e');
//         onUnauthorized?.call();
//         return handler.next(err);
//       }
//     }
//     return handler.next(err);
//   }
// }