
import 'dart:convert';

Product welcomeFromJson(String str) => Product.fromJson(json.decode(str));

String welcomeToJson(Product data) => json.encode(data.toJson());
class Product {
  String? id;
  String? servicesProviderId;
  String? name;
  String? price;
  String? details;
  String? categoryId;
  String? image1;
  String? image2;
  String? image3;
  String? image4;
  String? merchantId;

  Product(
      {this.id,
        this.servicesProviderId,
        this.name,
        this.price,
        this.details,
        this.categoryId,
        this.image1,
        this.image2,
        this.image3,
        this.image4,
        this.merchantId});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    servicesProviderId = json['services provider _id'];
    name = json['name'];
    price = json['price'];
    details = json['details'];
    categoryId = json['category_id'];
    image1 = json['image1'];
    image2 = json['image2'];
    image3 = json['image3'];
    image4 = json['image4'];
    merchantId = json['merchant_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['services provider _id'] = this.servicesProviderId;
    data['name'] = this.name;
    data['price'] = this.price;
    data['details'] = this.details;
    data['category_id'] = this.categoryId;
    data['image1'] = this.image1;
    data['image2'] = this.image2;
    data['image3'] = this.image3;
    data['image4'] = this.image4;
    data['merchant_id'] = this.merchantId;
    return data;
  }
}