import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:osta/block/state.dart';
import 'package:osta/model/Acount/Acount.dart';
import 'package:osta/model/Order/order.dart';
import 'package:osta/model/citise/citise.dart';
import 'package:osta/model/citise/citise.dart';
import 'package:osta/model/gaverments/gaverments.dart';
import 'package:osta/model/market/Product.dart';
import 'package:osta/model/profile.dart';
import 'package:osta/model/servece/servece.dart';
import 'package:osta/model/user/User.dart';
import 'package:osta/model/user/login_model.dart';
import 'package:osta/screen/auth/newPassword.dart';
import 'package:osta/screen/homeScreen/favorite.dart';
import 'package:osta/screen/homeScreen/homeScreen.dart';
import 'package:osta/screen/homeScreen/moreScreen.dart';
import 'package:osta/screen/homeScreen/myOrder.dart';
import 'package:osta/screen/homeScreen/profile.dart';
import 'package:osta/shered/componnents/conastaks.dart';
import 'package:osta/shered/network/dio_helber.dart';
import 'package:osta/shered/network/remot/end_points.dart';

import '../screen/allScreen/acouent.dart';

class OstaCubit extends Cubit<OstaState> {
  OstaCubit() : super(InitialState());

  get profileModell => null;
 static OstaCubit getCubit (context)=> BlocProvider.of(context);
 // Page View
  final PageController controller = PageController(initialPage: 0);


  // start Screen
  bool saveInMenu = false;
  void saveInMenuChange(){
    saveInMenu =!saveInMenu;
    emit(SaveInMenuState());
  }
  // end start Screen

  int index = 2;
  void changeIndexBottomNavBar(int i){
    index = i ;
    emit(ChangeIndexBottomNavBarState());
  }
List<Widget> bodyScreen = [
  More(),
  Favorite(),
  Home(),
  MyOrder(),
  Profile(),

];
  // change password screen
  bool oldPassword = true ;
  bool newPassword = true ;
  bool newPasswordDone = true ;
  void changeStateOfObscureText(int i){
    if(i==1){
      oldPassword =!oldPassword;
      emit(OldPasswordState());
    }
     if(i==2){

        newPassword =!newPassword;
        emit(NewPasswordState());

    }
     if(i==3){

        newPasswordDone =!newPasswordDone;
        emit(NewPasswordDOneState());

    }


  }



  // MyOrder Screen

Color colorContainer1 =Color(0xff1BD4BE);
Color colorContainer2 =Color(0xffE2E2E2);
Color colorText1 = Color(0xff1EC1AD);
Color colorText2 = Color(0xff9C9C9C);
bool x = true ;
void changeX(){
  x =!x;
  emit(XState());
}
int indexMyOrderScreen = 1 ;
void changeIndexMyOrderScreen(int i){
  indexMyOrderScreen = i ;
  emit(IndexMyOrderScreenState());
}
// login screen
  bool loginPassword = true;
  bool loginPassword2 = true;
  bool isChecked = false;
  void changeLoginPassword(){
    loginPassword =!loginPassword;
    emit(LoginPasswordState());
  }
  void changeLoginPassword2(){
    loginPassword2 =!loginPassword2;
    emit(LoginPasswordState2());
  }
  void changeRadio(bool value){
    isChecked = value;
    emit(RadioButtonLoginState());
  }

  // otpTextField Screen
int duration = 45;
  void restartDuration(){
    duration = duration;
    emit(RestartDurationState());
  }
  // screen 8 start
  int isChecked8 = 0;
  void changeIsChecked8(int i){
    isChecked8 = i ;
    emit(ChangeIsChecked8State());

  }
 bool AskForABasicWarrantyIsShow = false;
 void changeAskForABasicWarrantyIsShow(){
   AskForABasicWarrantyIsShow =! AskForABasicWarrantyIsShow;
   emit(AskForABasicWarrantyIsShowState());

 }
  int AskForABasicWarranty = 0;
  void changeAskForABasicWarranty(int i){
    AskForABasicWarranty = i ;
    emit(AskForABasicWarrantyState());

  }

// more Screen
int langauge = 0 ;
bool notificationSwitch = true;
  void changeLangauge(int i){
    langauge = i ;
    emit(ChangeLangaugeState());
  }
  void changeNotificationSwitch(){
    notificationSwitch = !notificationSwitch ;
    emit(ChangeNotificationSwitchState());
  }

// screen 28 اطلب مقاول تفاصيل
int time = 3 ;
  void changeTime(int i){
    time = i;
    emit(ChangeTimeState());
  }


  // screen 35
  int tatrteb = 0 ;
  int filter = 0 ;
  void tartebChange(int i){
    tatrteb = i ;
    emit(TeartebState());
  }
  void filterChange(int i){
    filter = i ;
    emit(FilterState());
  }
  // screen 38
  int value = 0 ;
  void changeValue(int i){
    if(i==0){
      value++;
    }
    if(i==1){
      value>1?value--:value=1;
    }
    emit(valueScreen38State());
  }

  int value1 = 0 ;
  void changeValue1(int i){
    if(i==0){
      value1++;
    }
    if(i==1){
      value1>1?value1--:value1=1;
    }
    emit(valueScreen38_1State());
  }

  // سجل كتاجر visibility password
  userLogin? Register;
  void userRegister({
    required String fname,
    required String lname,
    required String gaver,
    required String citiy,
    required String phone,
    required BuildContext context,

    required String password,
  }){
    emit(OstaRegisterStateloding());
    var map=new Map<String, dynamic>();
    map['fname']=fname;
    map['lname']=lname;
    map['phone']=phone;
    map['gaver']=gaver;
    map['citiy']=citiy;

    map['password']=password;


    var send=FormData.fromMap(map);
    dioHilber.postData(url: REGISTER, data: send)

        .then((value) {
      String d=value.data as String;
      if(d.contains("br")){
        print("check password or username");

        Future.delayed(Duration(seconds: 3),(){


        });

      }else{

        print("login scucess");
        Map valueMap = json.decode(d);
        List userList=valueMap.values.toList();
        User user=new User(id: userList[0], fName: userList[1], lName: userList[2], phone: userList[3], password: userList[4], citiy: userList[5]);
        Future.delayed(Duration(seconds:2),(){





          Navigator.pushNamed(context, "Login");
        });







      }


      emit(OstaRegisterStatesussecc(Register!));
    }).catchError((error){
      print(error.toString());
      emit(OstaRegisterStateerror(error.toString()));
    });


  }
  bool isloding=true;
  void loging(){
    isloding=false;

    Future.delayed(Duration(seconds: 3),(){
      isloding=true;

    });

  }

  List<String>Names=[
    "نجار"
    "كهراباء"
    "سباك"

  ];

  List<Servece>Serveces=[

  ];
  List<String>Servecesname=[

  ];



  void getServecedata(){
    emit(OstaServersStateloding());
    dioHilber.getData(url: SERVICE,id: id ). then((value) {
      // print(value);
      String d=value.data as String;
      List  Servers2= json.decode(d).toList();




      for(int i=0;i<Servers2.length;i++) {
        String serves=Servers2[i].toString();

        List<String> Servertheem=serves.split(",");
        String id = Servertheem[0].substring(Servertheem[0].indexOf(":")+1).trim();


        String name = Servertheem[1].substring(Servertheem[1].indexOf(":")+1).trim();
        print(name);


        String image1 = Servertheem[2].substring(Servertheem[2].indexOf(":")+1).trim();


        String image2 = Servertheem[3].substring(Servertheem[3].indexOf(":")+1).trim();

        String image3 = Servertheem[4].substring(Servertheem[4].indexOf(":")+1).trim();
        String image4 = Servertheem[5].substring(Servertheem[5].indexOf(":")+1).trim();
        print("image= "+image4);
        Servecesname.add(name);
        Servece ServeceData=Servece(name: name,id: id,image1: image1,image2: image2,image3: image3,image4: image4);
        Serveces.add(ServeceData);
      }





      emit(OstaServerssussecc());
    }).
    catchError((error){
      print(error.toString());
      emit(OstaServerserror(error));
    });

  }

  List<Geovernorate>governorates=[

  ];

  List<String>governoratesName=[

  ];
  int currentIndex=0;

  void change( int index){
    currentIndex=index;



    emit(OstaSchangenewsappstatw());
  }

 int currentGover=0;
  void changeoGoverIndex(int index){
    currentGover = index;
    emit(ChangeGoverIndexState());
  }
  int currentservise=0;
  void changeoservisIndex(int index){
    currentservise = index;
    emit(ChangeservesIndexState());
  }

  void Governorate(){

    dioHilber.getData(url: GOVERNORTE,id: id ). then((value) {
      // print(value);
      String d=value.data as String;
      List  Governorate2= json.decode(d).toList();




      for(int i=0;i<Governorate2.length;i++) {
        String governorate=Governorate2[i].toString();

        List<String> Governorateteheem=governorate.split(",");
        String id = Governorateteheem[0].substring(Governorateteheem[0].indexOf(":")+1).trim();


        String name = Governorateteheem[1].substring(Governorateteheem[1].indexOf(":")+1).trim().replaceAll("}", "");




        governoratesName.add(name);
        Geovernorate ServeceData=Geovernorate(name: name,id: id,);
        governorates.add(ServeceData);
      }





      emit(OstaSGovernoratesussecc());
    }).
    catchError((error){
      print(error.toString());
      emit(OstaGovernorateerror(error));
    });

  }

  List<Cities>cities=[

  ];
  List<String>citiesName=[

  ];



  void getCities(){

    dioHilber.getData(url: CITIS,id: id ). then((value) {
      // print(value);
      String d=value.data as String;
      List  Cities2= json.decode(d).toList();




      for(int i=0;i<Cities2.length;i++) {
        String Citiess=Cities2[i].toString();

        List<String> Citiestheem=Citiess.split(",");
        String id = Citiestheem[0].substring(Citiestheem[0].indexOf(":"));


        String cityNameAr = Citiestheem[1].substring(Citiestheem[1].indexOf(":")+1);

        String governorateId = Citiestheem[2].substring(Citiestheem[2].indexOf(":")+1);

        String cityNameEn = Citiestheem[3].substring(Citiestheem[3].indexOf(":")+1);





        citiesName.add(cityNameAr);
        Cities ServeceData=Cities(id: id,cityNameAr: cityNameAr,cityNameEn: cityNameEn,governorateId: governorateId);
        cities.add(ServeceData);
      }





      emit(OstaSGovernoratesussecc());
    }).
    catchError((error){
      print(error.toString());
      emit(OstaGovernorateerror(error));
    });

  }


  DateTime datatime=DateTime.now();
  int lens=0;
  void Lens(){
    lens=lens+1;
    emit(OstaSChangelens());

  }
  String? cites;
  var Cites = TextEditingController();
  void Citess(){
    cites=Cites.text;

  }
 int gaver=0;
  var Gaver = TextEditingController();
  void gaverr(){
    Gaver.text=governoratesName[gaver] as String;

    emit(Gavers());


  }
  String? selectedValue;
  String? selectedValuecites;
  String? selectedValue2;
  String? selectedValuecites2;
  String? selectedValue3;
  String? selectedValuecites3;
  String? selectedValue4;
  String? selectedValuecites4;


  // void getorder(){
  //   emit(OstaorderStateloding());
  //   dioHilber.getData(url: ORDER,id: id ). then((value) {
  //     // print(value);
  //     String d=value.data as String;
  //     List  order2= json.decode(d).toList();
  //
  //
  //
  //
  //     for(int i=0;i<order2.length;i++) {
  //       String serves=order2[i].toString();
  //
  //       List<String> ordertheem=serves.split(",");
  //       String id = ordertheem[0].substring(ordertheem[0].indexOf(":")+1).trim();
  //
  //
  //       String price = ordertheem[1].substring(ordertheem[1].indexOf(":")+1).trim();
  //       print(price);
  //
  //
  //       String details = ordertheem[2].substring(ordertheem[2].indexOf(":")+1).trim();
  //       print(details);
  //
  //
  //       String dateOfStarting = ordertheem[3].substring(ordertheem[3].indexOf(":")+1).trim();
  //
  //       String clientId = ordertheem[4].substring(ordertheem[4].indexOf(":")+1).trim();
  //       String servicesProviderId = ordertheem[5].substring(ordertheem[5].indexOf(":")+1).trim();
  //
  //       order Orderdata=order(id: id,price: price,details: details,dateOfStarting: dateOfStarting,clientId: clientId,servicesProviderId: servicesProviderId);
  //       Order.add(Orderdata);
  //     }
  //
  //
  //
  //
  //
  //     emit(Ostaorderssussecc());
  //   }).
  //   catchError((error){
  //     print(error.toString());
  //     emit(Ostaorderserror(error));
  //   });
  //
  //
  // }
  List<order>OrdersApp=[

  ];
  List<String>Ordersdetels=[

  ];
  // String?detaieels ;
  TextEditingController deteles = TextEditingController();
  void Sends(){
    Ordersdetels =deteles.text as List<String> ;
    emit(Changecontr());


  }



  order? orders;
  void Orderr({
    required String id,
    required String price,
    required String details,
    required String dateOfStarting,
    required String clientId,
    required String servicesProviderId,

    required BuildContext context,


  }){
    emit(OstaRegisterStateloding());
    var map=new Map<String, dynamic>();
    map['id']=id;
    map['price']=price;
    map['details']=details;
    map['clientId']=clientId;

    map['dateOfStarting']=servicesProviderId;



    var send=FormData.fromMap(map);

    dioHilber.postData(url: ORDER, data: send)

        .then((value) {



      String d=value.data as String;

      List<dynamic> order2 = json.decode(d).toList();


      for(int i=0;i<order2.length;i++){

        List<String> ordertheem =order2[i].toString().split(",");
        // print(ordertheem[1]);
        String id = ordertheem[0].substring(ordertheem[0].indexOf(":")+1).trim();
        //print(id);
        String price = ordertheem[1].substring(ordertheem[1].indexOf(":")+1).trim();

        String details = ordertheem[2].substring(ordertheem[2].indexOf(":")+1).trim();
        print(details);

        String dateOfStarting = ordertheem[3].substring(ordertheem[3].indexOf(":")+1).trim();
        String clientId = ordertheem[4].substring(ordertheem[4].indexOf(":")+1).trim();
        String servicesProviderId = ordertheem[4].substring(ordertheem[4].indexOf(":")+1).trim();


        order Orderdata=order(id: id,price: price,details: details,dateOfStarting: dateOfStarting,clientId: clientId,servicesProviderId: servicesProviderId);
        OrdersApp.add(Orderdata);

        TextEditingController deteles = TextEditingController();
        details  =deteles.text  ;
        void Sends(){

          emit(Changecontr());


        }



      }






      emit(Ostaorderssussecc());







    }



    ).catchError((error){
      print(error.toString());
      emit(Ostaorderserror(error));
    });




  }






  void getAcountdata(){
    emit(OstaAcountStateloding());
    dioHilber.getData(url: ACUONT,id: id ). then((value) {
      // print(value);
      print(value);

      String d=value.data as String;
      List  acount2= json.decode(d).toList();




      for(int i=0;i<acount2.length;i++) {
        String acount=acount2[i].toString();

        List<String> acounttheem=acount.split(",");
        String name = acounttheem[0].substring(acounttheem[0].indexOf(":")+1).trim();
        print(name+"name");

        String services_id = acounttheem[1].substring(acounttheem[1].indexOf(":")+1).trim();
        print(services_id);


        String years_of_Experrience = acounttheem[2].substring(acounttheem[2].indexOf(":")+1).trim();


        String personal_image = acounttheem[3].substring(acounttheem[3].indexOf(":")+1).trim();


        Acounts acountdata=Acounts(name: name,servicesId: services_id,yearsOfExperrience: years_of_Experrience,personalImage: personal_image);
        Acount.add(acountdata);
        print(Acount);

      }





      emit(OstaAcountssussecc());
    }).
    catchError((error){
      print(error.toString());
      emit(OstaAcounterror(error));
    });

  }
  List<Acounts>Acount=[

  ];
  Acounts? acont;
  void Acont({
    required String name,
    required String services_id,
    required String years_of_Experrience,
    required String personal_image,

    required BuildContext context,


  }){
    emit(OstaRegisterStateloding());
    var map=new Map<String, dynamic>();
    map['name']=name;
    map['services_id']=services_id;
    map['years_of_Experrience']=years_of_Experrience;

    map['personal_image']=personal_image;



    var send=FormData.fromMap(map);

    dioHilber.postData(url: ACUONT, data: send)

        .then((value) {

      String d=value.data as String;
      List<dynamic> acount2 = json.decode(d).toList();

      for(int i=0;i<acount2.length;i++){

        List<String> acounttheem =acount2[i].toString().split(",");
        print(acounttheem[1]);
        String name = acounttheem[0].substring(acounttheem[0].indexOf(":")+1).trim();
        String services_id = acounttheem[1].substring(acounttheem[1].indexOf(":")+1).trim();
        String years_of_Experrience = acounttheem[2].substring(acounttheem[2].indexOf(":")+1).trim();
        String personal_image = acounttheem[3].substring(acounttheem[3].indexOf(":")+1).trim();
        Acounts acountdata=Acounts(name: name,servicesId: services_id,yearsOfExperrience: years_of_Experrience,personalImage: personal_image);
        Acount.add(acountdata);
        //print("list"+Acount.toString());

      }



        // List acountList=valueMap;

    //    Acounts user=new Acounts(name: acountList[0],servicesId:acountList [1],yearsOfExperrience: acountList[2],personalImage:acountList [3]);
      // Acount.add(user);
      emit(OstaAcountssussecc());







      }



    ).catchError((error){
      print(error.toString());
      emit(OstaAcounterror(error));
    });


  }
  List<Product>products=[

  ];



  void getHomedata(){

    dioHilber.getData(url: PRODUCT,id: id ). then((value) {
      // print(value);
      String d=value.data as String;
      List  products2= json.decode(d).toList();



      for(int i=0;i<products2.length;i++) {
        String product=products2[i].toString();

        List<String> productItems=       product.split(",");
        String id = productItems[0].substring(productItems[0].indexOf(":"));
        String srvice_provider = productItems[1].substring(
            productItems[1].indexOf(":"));

        String name = productItems[2].substring(productItems[2].indexOf(":")+1);
        print(name);


        String price = productItems[3].substring(productItems[3].indexOf(":"));
        print(price);


        String details = productItems[4].substring(productItems[4].indexOf(":"));
        print(details);


        String category_id = productItems[5].substring(productItems[5].indexOf(":"));
        print(category_id);

        String image1 = productItems[6].substring(productItems[6].indexOf(":"));

        String image2 = productItems[7].substring(productItems[7].indexOf(":"));

        String image3 = productItems[8].substring(productItems[8].indexOf(":"));
        String image4 = productItems[9].substring(productItems[9].indexOf(":"));
        Product productData=Product(id:id,servicesProviderId: srvice_provider,name: name,price: price,details: details,categoryId: category_id,image1: image1,image2: image2,image3: image3,image4: image4);
        products.add(productData);
      }





      emit(marketStatesussecc());
    }).
    catchError((error){
      print(error.toString());
      emit(marketStateerror(error));
    });

  }













}