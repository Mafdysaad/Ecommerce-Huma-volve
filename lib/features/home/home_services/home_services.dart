import 'package:ecommerce_app_huma_volve/core/api_clients/api_clients.dart';
import 'package:ecommerce_app_huma_volve/core/const/api/endpoints.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/category_model/gategories_modle.dart';

class HomeServices {
  final ApiClient apiClient;
  const HomeServices(this.apiClient);

  Future<GategoriesModle> getGategories() async {
    var respons = await apiClient.get(Endpoints.categories);
    return GategoriesModle.fromJson(respons.data);
  }
}
