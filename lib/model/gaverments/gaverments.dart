import 'dart:convert';

Geovernorate welcomeFromJson(String str) => Geovernorate.fromJson(json.decode(str));

String welcomeToJson(Geovernorate data) => json.encode(data.toJson());
class Geovernorate {

  String? id;
  String? name;

  Geovernorate({this.id, this.name});

  Geovernorate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }


}