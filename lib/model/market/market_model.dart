class homemodel{


  HomeDataModel? data;

  homemodel.fromJson(Map<String,dynamic> json)
  {

    data = json['data'] == null? null :HomeDataModel.fromJson(json['data']);
  }
}

class HomeDataModel
{


  List<productsmodil> products = [];

  HomeDataModel.fromJson(Map<String,dynamic> json)
  {


    json['products'].forEach(
            (product){
          products.add(productsmodil.fromJson(product));
        });
  }
}



class productsmodil
{
  String? images;
  String?name;
  String?price;
  String?details;
  String?category_id;
  String?merchant_id;
  int? id;

  productsmodil.fromJson(Map<String,dynamic> json)
  {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    details = json['details'];
    category_id = json['category_id'];
    merchant_id = json['merchant_id'];
    images = json['image'];
  }
}