import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/login/cubit.dart';
import 'package:osta/block/market/cupit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/screen/allScreen/Aska_contractor.dart';
import 'package:osta/screen/allScreen/MakeSuggestions.dart';
import 'package:osta/screen/allScreen/Technicalsupport.dart';
import 'package:osta/screen/allScreen/TermsAndConditions.dart';
import 'package:osta/screen/allScreen/acouent.dart';
import 'package:osta/screen/allScreen/addNewLocation.dart';
import 'package:osta/screen/allScreen/changePassword.dart';
import 'package:osta/screen/allScreen/login2.dart';
import 'package:osta/screen/allScreen/login3.dart';
import 'package:osta/screen/allScreen/next_ask_a_contractor.dart';
import 'package:osta/screen/allScreen/market.dart';
import 'package:osta/screen/allScreen/orderDone.dart';
import 'package:osta/screen/allScreen/screen1_marchen.dart';
import 'package:osta/screen/allScreen/screen2_marchen.dart';
import 'package:osta/screen/allScreen/screen35.dart';
import 'package:osta/screen/allScreen/screen38.dart';
import 'package:osta/screen/allScreen/screen39.dart';
import 'package:osta/screen/allScreen/screen40.dart';
import 'package:osta/screen/allScreen/screen45.dart';
import 'package:osta/screen/allScreen/screen58.dart';
import 'package:osta/screen/allScreen/screen63.dart';
import 'package:osta/screen/allScreen/screen65.dart';
import 'package:osta/screen/allScreen/screen66.dart';
import 'package:osta/screen/allScreen/screen67.dart';
import 'package:osta/screen/allScreen/screen69.dart';
import 'package:osta/screen/allScreen/screen70.dart';
import 'package:osta/screen/allScreen/HelpCenter .dart';
import 'package:osta/screen/allScreen/screen73.dart';
import 'package:osta/screen/allScreen/Termsofuse.dart';
import 'package:osta/screen/allScreen/screen75.dart';
import 'package:osta/screen/allScreen/nextHomeScreen.dart';
import 'package:osta/screen/allScreen/screen82.dart';
import 'package:osta/screen/allScreen/search.dart';
import 'package:osta/screen/allScreen/shareApp.dart';
import 'package:osta/screen/allScreen/startScreen.dart';
import 'package:osta/screen/auth/forgetPassowrd.dart';
import 'package:osta/screen/auth/login.dart';
import 'package:osta/screen/auth/newPassword.dart';
import 'package:osta/screen/auth/otp_text_field.dart';
import 'package:osta/screen/homepadge.dart';
import 'package:osta/screen/rigisterclint/signUp.dart';
import 'package:osta/screen/homeScreen/home.dart';
import 'package:osta/screen/homeScreen/myOrder.dart';
import 'package:osta/screen/pageView.dart';
import 'package:osta/shered/network/dio_helber.dart';

import 'shered/network/lock/caoh_hilber.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();


  await Future.delayed(Duration(seconds: 3));
  dioHilber.init();
  await CacheHelper.init();
  bool? OnBoarding =CacheHelper.getData(key: 'OnBoarding') == null? null: CacheHelper.getData(key: 'OnBoarding');
  String? id =CacheHelper.getData(key: 'id') == null? null: CacheHelper.getData(key: 'id');
  Widget widget;
  if(OnBoarding!=null){
    if(id!=null)widget =HomeScreen();
    else widget =Login();
  }else{
    widget =PageViewPage();
  }



  runApp(OstaApp(
    startwidget: widget,
  ));
}
class OstaApp extends StatelessWidget {
 Widget? startwidget;
  OstaApp({this.startwidget});


  @override

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>OstaCubit()..getServecedata()..Governorate()..getCities()..Acont(name: "mohamed", services_id: "1", years_of_Experrience: "2", personal_image: "3", context: context)..getHomedata()..Orderr(id: '', price: '', details: '', dateOfStarting: '', clientId: '', servicesProviderId: '', context: context)),
        BlocProvider(create: (BuildContext context)=>ostaLogincubit()),
        BlocProvider(create: (BuildContext context)=>marketAppcubit()),


      ],
      child: BlocConsumer<OstaCubit,OstaState>(builder: (context,state){return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Vazirmatn"
        ),
        routes: {
          "forgetPassword":(context)=>ForgetPassword(),
          "HomePadge":(context)=>HomePadge(),
          "OtpTextField":(context)=>OtpTextFieldScreen(),
          "HomeScreen":(context)=>HomeScreen(),
          "NewPassword":(context)=>NewPassword(),
          "SignUp":(context)=>SignUp(),
          "Login":(context)=>Login(),
          "Login2":(context)=>Login2(),
          "Login3":(context)=>Login3(),
          "TermsOfUse":(context)=>TermsOFUse(),
          "ChangePassword":(context)=>ChangePassword(),
          "Search":(context)=>Search(),
          "OrderDone":(context)=>OrderDone(),
          "screen8":(context)=>DetailsItem(),
          "screen32":(context)=>Screen32(),
          "screen35":(context)=>Screen35(),
          "screen38":(context)=>Screen38(),
          "screen39":(context)=>Screen39(),
          "screen40":(context)=>Screen40(),
          "screen45":(context)=>Screen45(),
          "screen27":(context)=>Screen27(),
          "screen28":(context)=>Screen28(),
          "notification":(context)=>Screen82(),
          "wallet":(context)=>Screen58(),
          "screen66":(context)=>Screen66(),
          "screen67":(context)=>Screen67(),
          "screen69":(context)=>Screen69(),
          "screen70":(context)=>Screen70(),
          "screen72":(context)=>Screen72(),
          "screen73":(context)=>Screen73(),
          "screen75":(context)=>Screen75(),
          "address":(context)=>Screen63(),
          "marchen":(context)=>marchen(),
          "marchen2":(context)=>marchen2(),
          "addNewAddress":(context)=>AddNewAddress(),

          "AddNewLocation":(context)=>AddNewLocation(),
          "MyOrder":(context)=>MyOrder(),
          "Acount":(context)=>Acount(),





        },
        home: startwidget
      );},listener: (context,state){},),
    );
  }
}
