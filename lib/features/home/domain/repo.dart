import 'package:dartz/dartz.dart';
import 'package:ecommerce_app_huma_volve/core/error/errors.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/model/category_model/gategories_modle.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/model/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<GategoriesModle>>> getCategores();
  Future<Either<Failure, List<ProductModel>>> getProductes();
}
