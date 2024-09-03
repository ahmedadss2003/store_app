class ProductModel {
  final int id ;
  final String title;
  final String price;
  final String description ;
  final GetRating reting ; 
  ProductModel({required this.id, required this.title, required this.price, required this.description, required this.reting});
   
  factory ProductModel.fromjson(jsonData){
    return ProductModel(id: jsonData["id"], title: jsonData["title"], price: jsonData["price"], description: jsonData["description"] , reting: GetRating.fromjson(jsonData["rating"]));
  }

}

class GetRating{
  final double rate ;
  final String count ; 

  GetRating({required this.rate, required this.count});
  factory GetRating.fromjson(jsonData){
    return GetRating(rate: jsonData["rate"], count: jsonData["count"]);
  }

}