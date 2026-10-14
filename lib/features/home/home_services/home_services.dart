import 'package:ecommerce_app_huma_volve/core/api_clients/api_clients.dart';
import 'package:ecommerce_app_huma_volve/core/const/api/endpoints.dart';

class HomeServices {
  final ApiClient apiClient;
  const HomeServices(this.apiClient);

  getGategories() async {
    await apiClient.get(Endpoints.categories);
  }
}
