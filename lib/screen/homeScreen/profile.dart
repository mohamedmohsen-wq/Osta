import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';



class Profile extends StatelessWidget {
  var nameController=TextEditingController();
  var emaiController=TextEditingController();
  var phoneController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(
      builder: (BuildContext context, state) =>ConditionalBuilder(
        condition: OstaCubit.getCubit(context).profileModell !=null,
        builder: (BuildContext context) {
          return  Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                height: 154,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, "screen40");
                          },
                          child: Image.asset(
                            "images3/Group 37921.png",
                            width: 33,
                            height: 31,
                          ),
                        ),
                        Image.asset(
                          "images3/osataLogo.png",
                          width: 64,
                          height: 30,
                        ),
                        buildInkWellNotification(context),

                      ],
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'حسابي',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 24,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1.0, 0.103),
                    end: Alignment(0.975, 0.218),
                    colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              defaultTextFormField(
                  textEditingController:nameController ,

                  label: "الاسم", hint: "مصطفي ابراهيم", suffix: Icon(Icons.account_circle, color: Colors.black,)),
              defaultTextFormField(

                  textEditingController:phoneController ,


                  label: "رقم الموبايل",

                  hint: "0000 000 0000",
                  suffix: Container(decoration: BoxDecoration(shape: BoxShape.circle,),
                    child: Directionality(
                        textDirection: TextDirection.ltr,
                        child:Text("")
                    ),
                  ),textInputType: TextInputType.number),
              defaultTextFormField(
                  textEditingController:emaiController ,
                  label: "البريد الإلكتروني", hint: "username@mail.com", suffix: Icon(Icons.email, color: Colors.black,),textInputType: TextInputType.emailAddress),
              SizedBox(height: 15,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'حفظ',
                    style: TextStyle(
                      fontSize: 17,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1.641, -0.872),
                    end: Alignment(1.353, 1.348),
                    colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x6347c1f0),
                      offset: Offset(0, 5),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "ChangePassword");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تعديل كلمة المرور',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                      Icon(Icons.lock,color: Color(0xffffffff),)
                    ],),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.641, -0.872),
                      end: Alignment(1.353, 1.348),
                      colors: [const Color(0xff1e3a64), const Color(0xff5addff)],
                      stops: [0.0, 1.0],
                    ),                borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )
            ],
          );
        }, fallback: (BuildContext context)=> Center(child: CircularProgressIndicator()),

      ),
      listener: (BuildContext context, Object? state) {


      },

    );
  }
}
