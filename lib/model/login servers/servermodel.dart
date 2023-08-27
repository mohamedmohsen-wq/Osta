import 'dart:convert';

Serverlogin welcomeFromJson(String str) => Serverlogin.fromJson(json.decode(str));

String welcomeToJson(Serverlogin data) => json.encode(data.toJson());

class Serverlogin {
  Serverlogin({
    required this.id,
    required this.name,


    required this.card_number,
    required this.services_id,
    required this.years_of_Experrience,

    required this.number_phone,
    required this.password,
    required this.cities_id,
    required this.image1,
    required this.image2,
    required this.image3,
  });

  String id;
  String services_id;
  String card_number;
  String years_of_Experrience;
  String?image1;
  String?image2;
  String?image3;

  String name;
  String number_phone;
  String password;
  String cities_id;

  factory Serverlogin.fromJson(Map<String, dynamic> json) => Serverlogin(
    id: json["id"],
    name: json["name"],
    image1: json["image1"],
    image2: json["image2"],
    image3: json["image3"],
    card_number: json["card_number"],
    services_id: json["services_id"],
    years_of_Experrience: json["years_of_Experrience"],


    number_phone: json["number_phone"],
    password: json["password"],
    cities_id: json["cities_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image1": image1,
    "image2": image2,
    "image3": image3,
    "name": name,
    "number_phone": number_phone,
    "password": password,
    "cities_id": cities_id,
  };
}
