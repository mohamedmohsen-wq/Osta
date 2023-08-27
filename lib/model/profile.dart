class ProfileModel
{
  bool? status;

  ProfileDataModel? data;

  ProfileModel.fromJson(Map<String,dynamic> json)
  {
    status = json['status'];
    data = json['data']== null? null:ProfileDataModel.fromJson(json['data']);
  }
}

class ProfileDataModel
{
  int? id;
  String? name;
  String? phone;
  String? image;
  String? token;
  String? email;

  ProfileDataModel.fromJson(Map<String,dynamic> json)
  {
    id=json['id'];
    name=json['name'];
    phone=json['phone'];
    image=json['image'];
    email=json['email'];
    token=json['token'];
  }
}