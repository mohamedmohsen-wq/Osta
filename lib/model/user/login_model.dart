class userLogin{


  userdata? data;
  userLogin.fromjason(Map<String,dynamic> json){

    data=json!=null ? userdata.fromjason(json): null;


  }

}
class userdata{
  String? id;

  String? fName;
  String? lName;
  String? phone;






  String? password;
  String? citiy;


  userdata({
    this.id,
    this.fName,
    this.lName,



    this.phone,

    this.password,
    this.citiy,

  });

 // userdata(); //named coms
  userdata.fromjason(Map<String,dynamic> json){
    id=json["id"];
    fName=json["fName"];
    lName=json["lName"];
    citiy=json["citiy"];

     phone=json["phone"];
    password=json["password"];



  }




}