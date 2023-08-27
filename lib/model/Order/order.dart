import 'dart:convert';



order welcomeFromJson(String str) => order.fromJson(json.decode(str));

String welcomeToJson(order data) => json.encode(data.toJson());

class order {
  String? id;
  String? price;
  String? details;
  String? dateOfStarting;
  String? clientId;
  String? servicesProviderId;

  order(
      {this.id,
        this.price,
        this.details,
        this.dateOfStarting,
        this.clientId,
        this.servicesProviderId});

  order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    details = json['details'];
    dateOfStarting = json['date of starting'];
    clientId = json['client_id'];
    servicesProviderId = json['services provider _id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['details'] = this.details;
    data['date of starting'] = this.dateOfStarting;
    data['client_id'] = this.clientId;
    data['services provider _id'] = this.servicesProviderId;
    return data;
  }
}