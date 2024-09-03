import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  Future<List<dynamic>> get({required url , String? token}) async{
    final dio = Dio();
    Map<String ,dynamic> headers ={};
    if(token!=null){
      headers.addAll({
        "Authorization":"Bearer$token"
      });
    }
    Response response ;
  try {
   response =await dio.get(url , options: Options(
    headers: headers ,
   )) ;
} on DioException catch (e) {
    throw Exception("Unexpected error: ${e.toString()}");
}
 return response.data ;   
  }

  Future<dynamic> post({required url , @required dynamic data , @required String? token}) async{ // token may be exist in the app for autherization
    final dio = Dio();
         Map<String , dynamic> headers = {
          "Accept": "application/json" ,
          "Content-Type":"multipart/form-data" ,
         } ;
         if(token!=null){
          headers.addAll( // use addAll to add map
            {
              "Authorization":"Bearer$token"
            }
          );
         }
         Response response =await dio.post((url),data:data// this is = body in http package map<String , Dynamic> 
        ,options: Options // this is = headers in http package 
         (
          headers: headers ,
         ));
         
         return response.data ;
  }
  
  Future<dynamic> PUT({required url , @required dynamic data , @required String? token }) async{ // token may be exist in the app for autherization
    final dio = Dio();
         Map<String , String> headers = {
          "Accept": "application/json" ,
          "Content-Type":"multipart/form-data" ,
         } ;
         if(token!=null){
          headers.addAll( // use addAll to add map
            { 
              "Authorization":"Bearer$token"
            }
          );
         }
         Response response =await dio.post((url),data:data// this is = body in http package map<String , Dynamic> 
        ,options: Options // this is = headers in http package 
         (
          headers: headers ,
         ));
         
         return response.data ;
  }
}