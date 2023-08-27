import 'dart:convert';

Marshen welcomeFromJson(String str) => Marshen.fromJson(json.decode(str));

String welcomeToJson(Marshen data) => json.encode(data.toJson());

class Marshen {
  String? id;
  String? firstName;
  String? tradeName;
  String? secondName;
  String? numberPhone;
  String? password;
  String? cityId;
  String? personalmage;
  String? cardimagefront;
  String? cardimageback;

  Marshen(
      {this.id,
        this.firstName,
        this.tradeName,
        this.secondName,
        this.numberPhone,
        this.password,
        this.cityId,
        this.personalmage,
        this.cardimagefront,
        this.cardimageback});

  Marshen.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    tradeName = json['trade_name'];
    secondName = json['second_name'];
    numberPhone = json['number_phone'];
    password = json['password'];
    cityId = json['city_id'];
    personalmage = json['personalmage'];
    cardimagefront = json['cardimagefront'];
    cardimageback = json['cardimageback'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['trade_name'] = this.tradeName;
    data['second_name'] = this.secondName;
    data['number_phone'] = this.numberPhone;
    data['password'] = this.password;
    data['city_id'] = this.cityId;
    data['personalmage'] = this.personalmage;
    data['cardimagefront'] = this.cardimagefront;
    data['cardimageback'] = this.cardimageback;
    return data;
  }
}
