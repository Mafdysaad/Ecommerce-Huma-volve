import 'package:dio/dio.dart';
import 'package:ecommerce_app_huma_volve/core/api_clients/api_clients.dart';
import 'package:ecommerce_app_huma_volve/core/const/api/endpoints.dart';
import 'package:ecommerce_app_huma_volve/core/error/errors.dart';

class LoginService {
  final ApiClient apiClient;

  const LoginService({required this.apiClient});

  Future<Response<dynamic>> login(String email, String password) async {
    try {
      final response = await apiClient.post(
        Endpoints.login,
        data: {'email': email, 'password': password},
      );

      return response;
    } on DioException catch (e) {
      throw ServerFailure.fromDioException(e);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }
}
