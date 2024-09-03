import 'package:store_app/Models/get_all_product_model.dart';
import 'package:store_app/helper/api.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoryServices (String categoryName)async{
  List<ProductModel> categoriesList = [];
  List<dynamic> data = await Api().get(url: "https://fakestoreapi.com/products/category/$categoryName") ;
  
  for(int i=0 ; i<data.length ; i++){
    categoriesList.add(ProductModel.fromjson(data[i])) ;
  }

    return categoriesList ;
  }
}