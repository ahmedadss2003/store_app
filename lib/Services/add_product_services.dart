import 'package:dio/dio.dart';
import 'package:store_app/Models/get_all_product_model.dart';
import 'package:store_app/helper/api.dart';

class AddProduct {
  Future<ProductModel> addProductServices(
    {
      required String title ,
      required String price ,
      required String desc ,
      required String img ,
      required String category ,
    }
  ) async{

    Map<String , dynamic> response =await Api().post(url: "https://fakestoreapi.com/products", data: {
      "title": title,
      "price":price,
      "desc":desc,
      "img":img,
      "category": category
    },); 
    try{ 
      return ProductModel.fromjson(response) ;
    }on DioException catch(e){
      throw Exception("there is a problem ${e.toString()} with body{$response}"); 
    }
    
  }
}