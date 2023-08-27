import 'dart:convert';

Cities welcomeFromJson(String str) => Cities.fromJson(json.decode(str));

String welcomeToJson(Cities data) => json.encode(data.toJson());

class Cities {
  String? id;
  String? cityNameAr;
  String? governorateId;
  String? cityNameEn;

  Cities({this.id, this.cityNameAr, this.governorateId, this.cityNameEn});

  Cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityNameAr = json['city_name_ar'];
    governorateId = json['governorate_id'];
    cityNameEn = json['city_name_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city_name_ar'] = this.cityNameAr;
    data['governorate_id'] = this.governorateId;
    data['city_name_en'] = this.cityNameEn;
    return data;
  }
}


