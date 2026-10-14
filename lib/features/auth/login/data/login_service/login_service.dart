import 'package:dio/dio.dart';
import 'package:ecommerce_app_huma_volve/core/api_clients/api_clients.dart';
import 'package:ecommerce_app_huma_volve/core/const/api/endpoints.dart';
import 'package:ecommerce_app_huma_volve/core/error/errors.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/data/login_model.dart';

class LoginService {
  final ApiClient apiClient;

  const LoginService(this.apiClient);

  Future<LoginModel> login(String email, String password) async {
    final response = await apiClient.post(
      Endpoints.login,
      data: {'email': email, 'password': password},
    );

    return LoginModel.fromJson(response.data);
  }
}
