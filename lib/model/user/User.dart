import 'dart:convert';

User welcomeFromJson(String str) => User.fromJson(json.decode(str));

String welcomeToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.fName,
    required this.lName,
    required this.phone,
    required this.password,
    required this.citiy,
  });

  String id;
  String fName;
  String lName;
  String phone;
  String password;
  String citiy;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    fName: json["fName"],
    lName: json["lName"],
    phone: json["phone"],
    password: json["password"],
    citiy: json["citiy"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fName": fName,
    "lName": lName,
    "phone": phone,
    "password": password,
    "citiy": citiy,
  };
}
