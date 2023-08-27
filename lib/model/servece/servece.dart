import 'dart:convert';

Servece welcomeFromJson(String str) => Servece.fromJson(json.decode(str));

String welcomeToJson(Servece data) => json.encode(data.toJson());
class Servece {

  String? id;
  String? name;
  String? image1;
  String? image2;
  String? image3;
  String? image4;

  Servece(
      {this.id, this.name, this.image1, this.image2, this.image3, this.image4});

  Servece.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    image1 = json['image1'];
    image2 = json['image2'];
    image3 = json['image3'];
    image4 = json['image4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['image1'] = this.image1;
    data['image2'] = this.image2;
    data['image3'] = this.image3;
    data['image4'] = this.image4;
    return data;
  }
}