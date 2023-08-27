



import 'dart:convert';


import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:osta/block/login/state.dart';
import 'package:osta/model/login%20marchen/marshenModel.dart';
import 'package:osta/model/login%20servers/servermodel.dart';
import 'package:osta/model/login%20servers/servermodel.dart';
import 'package:osta/model/user/User.dart';
import 'package:osta/model/user/login_model.dart';
import 'package:osta/shered/network/dio_helber.dart';
import 'package:osta/shered/network/lock/caoh_hilber.dart';
import 'package:osta/shered/network/remot/end_points.dart';

import '../../model/login servers/servermodel.dart';


class ostaLogincubit extends Cubit<ostaLoginState>{
  ostaLogincubit():super(ostaLoginStateinitial());

  static ostaLogincubit get(context)=>BlocProvider.of(context);
  User? loginmod;

  void userlogin({
    required String phone,
    required String password,
    required BuildContext context

  }) {
    emit(ostaLoginStateloding());

var map=new Map<String, dynamic>();
map['phone']=phone;
map['password']=password;
var send=FormData.fromMap(map);
    dioHilber.postData(
        url: Login_client,
        data: send


    )


        .then((value) {


      String d=value.data as String;
    //  loginmod =

      if(d.contains("br")){
        print("check password or username");

        Future.delayed(Duration(seconds: 3),(){
          Fluttertoast.showToast(
              msg: "check password or username",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

        });

      }else{

        print("login scucess");
        Map valueMap = json.decode(d);
        List userList=valueMap.values.toList();

        User user=new User(id: userList[0], fName: userList[1], lName: userList[2], phone: userList[3], password: userList[4], citiy: userList[5]);
        Future.delayed(Duration(seconds:2),(){

          Fluttertoast.showToast(
              msg: "login scucess",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );



          Navigator.pushNamed(context, "HomeScreen");
        });







      }


      emit(ostaLoginStatesussecc(loginmod!));
    }).catchError((error) {
     // print(error.toString());
      emit(ostaLoginStateerror(error.toString()));
    });
  }
  IconData suffix = Icons.visibility;
  bool ispassword=true;
  void changeicon(){
    ispassword=!ispassword;
    if(!ispassword){
      suffix=Icons.visibility;
    }else{
      suffix=Icons.visibility_off;
    }
    emit(ostaLoginStateicon());


  }
  bool isChecked = false;
  void changeRadio(bool value){
    isChecked = value;
    emit(RadioButtonLoginState());
  }
  bool isloding=true;
  void loging(){
    isloding=false;

    Future.delayed(Duration(seconds: 3),(){
    isloding=true;

    });

  }
  void marchenlogin({
    required String phone,
    required String password,
    required BuildContext context

  }) {
    emit(ostaLoginStateloding());

    var map=new Map<String, dynamic>();
    map['phone']=phone;
    map['password']=password;
    var send=FormData.fromMap(map);
    dioHilber.postData(
        url: login_merchant,
        data: send


    )


        .then((value) {


      String d=value.data as String;
      //  loginmod =

      if(d.contains("br")){
        print("check password or username");
        Future.delayed(Duration(seconds: 3),(){
          Fluttertoast.showToast(
              msg: "check password or username",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

        });

      }else{

        print("login scucess");
        Map valueMap = json.decode(d);
        List MarshenList=valueMap.values.toList();
        Marshen marshen=new Marshen(id: MarshenList[0],firstName: MarshenList[1],tradeName: MarshenList[2],secondName: MarshenList[3],numberPhone: MarshenList[4],password: MarshenList[5],cityId: MarshenList[6],cardimageback: MarshenList[7],cardimagefront: MarshenList[8],personalmage: MarshenList[9]);
        Future.delayed(Duration(seconds:2),(){
          Fluttertoast.showToast(
              msg: "login scucess",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );

          Navigator.pushNamed(context, "marchen2");
        });







      }


      emit(ostaLoginStatesussecc(loginmod!));
    }).catchError((error) {
      // print(error.toString());
      emit(ostaLoginStateerror(error.toString()));
    });
  }
  void providerlogin({
    required String phone,
    required String password,
    required BuildContext context

  }) {
    emit(ostaLoginStateloding());

    var map=new Map<String, dynamic>();
    map['phone']=phone;
    map['password']=password;
    var send=FormData.fromMap(map);
    dioHilber.postData(
        url: login_service,
        data: send


    )


        .then((value) {


      String d=value.data as String;
      //  loginmod =

      if(d.contains("br")){
        print("check password or username");
        Future.delayed(Duration(seconds: 3),(){
          Fluttertoast.showToast(
              msg: "check password or username",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

        });

      }else{

        print("login scucess");
        Map valueMap = json.decode(d);
        List serverList=valueMap.values.toList();
        Serverlogin server=new Serverlogin(id: serverList[0], name: serverList[1], card_number: serverList[2], services_id: serverList[3], years_of_Experrience: serverList[4], number_phone: serverList[5], password: serverList[6], cities_id: serverList[7], image1: serverList[8], image2: serverList[9], image3: serverList[10],);
        Future.delayed(Duration(seconds:2),(){
          Fluttertoast.showToast(
              msg: "login scucess",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );

          Navigator.pushNamed(context, "HomeScreen");
        });







      }


      emit(ostaLoginStatesussecc(loginmod!));
    }).catchError((error) {
      // print(error.toString());
      emit(ostaLoginStateerror(error.toString()));
    });
  }
}
