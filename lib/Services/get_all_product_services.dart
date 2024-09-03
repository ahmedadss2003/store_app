import 'package:store_app/Models/get_all_product_model.dart';
import 'package:store_app/helper/api.dart';

class GetAllProductServices {
   
   Future<List<ProductModel>> getAllProductModel()async{
     
  
    
  List<dynamic> responseList =await Api().get(url: "https://fakestoreapi.com/products?") ;
  List<ProductModel> productList = [];
  for(int i=0 ; i<responseList.length ; i++){
    productList.add(ProductModel.fromjson(responseList[i])) ;
  
  }
    return productList ;

   }
}