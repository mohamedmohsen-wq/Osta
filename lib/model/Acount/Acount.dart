import 'dart:convert';

Acounts welcomeFromJson(String str) => Acounts.fromJson(json.decode(str));

String welcomeToJson(Acounts data) => json.encode(data.toJson());
class Acounts {
  String? name;
  String? servicesId;
  String? yearsOfExperrience;
  String? personalImage;

  Acounts(
      {this.name,
        this.servicesId,
        this.yearsOfExperrience,
        this.personalImage});

  Acounts.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    servicesId = json['services_id'];
    yearsOfExperrience = json['years_of_Experrience'];
    personalImage = json['personal_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['services_id'] = this.servicesId;
    data['years_of_Experrience'] = this.yearsOfExperrience;
    data['personal_image'] = this.personalImage;
    return data;
  }
}
