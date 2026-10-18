import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app_huma_volve/core/error/errors.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/data_source/remotDataSource.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/model/category_model/gategories_modle.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/model/product_model/product_model.dart';
import 'package:ecommerce_app_huma_volve/features/home/domain/repo.dart';

class HomeRepoImplemantion  extends HomeRepo{
  final Remotdatasource remotdatasource;
   HomeRepoImplemantion(this.remotdatasource)
  @override
  Future<Either<Failure,List< GategoriesModle>>> getCategores() async{
    try{
     List<GategoriesModle> data =   await remotdatasource.getGategories();
    return right(data);
    
    }on Exception catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }else{
        return left(ServerFailure(e.toString()));
      }

    }
  }

  @override
  Future<Either<Failure, ProductModel>> getProductes() {
    
  }

} 