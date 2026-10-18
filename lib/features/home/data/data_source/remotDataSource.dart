import 'package:ecommerce_app_huma_volve/core/api_clients/api_clients.dart';
import 'package:ecommerce_app_huma_volve/core/const/api/endpoints.dart';
import 'package:ecommerce_app_huma_volve/core/function/halper.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/model/category_model/gategories_modle.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/model/product_model/product_model.dart';

class Remotdatasource {
  final ApiClient apiClient;
  const Remotdatasource(this.apiClient);

  Future<List<GategoriesModle>> getGategories() async {
    var respons = await apiClient.get(Endpoints.categories);
    return parsingData(respons.data, GategoriesModle.fromJson);
  }

  Future<List<ProductModel>> getProdects(
    String id,
    String limit,
    String offset,
  ) async {
    var respons = await apiClient.get(
      Endpoints.prodects,
      queryParameters: {"id": id, "limit": limit, "offset": offset},
    );
    return parsingData(respons.data, ProductModel.fromJson);
  }
}
