import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/login/cubit.dart';
import 'package:osta/block/login/state.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';
import 'package:osta/shered/network/lock/caoh_hilber.dart';


class Login3 extends StatelessWidget {
  var phoneController=TextEditingController();
  var passorwdController=TextEditingController();
  var formkey=GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ostaLogincubit,ostaLoginState>(builder: (context,state){
      ostaLogincubit cubit = BlocProvider.of(context);
      return WillPopScope(
        onWillPop: ()async{
          Navigator.maybePop(context);
          print("No");
          return await false;
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(children: [
                buildClipPath(context),
                SizedBox(height: 20,),

                Text(
                  'تسجيل الدخول كتاجر ',
                  style: TextStyle(
                    fontSize: 19,
                    color: const Color(0xff1c1b20),
                    fontWeight: FontWeight.w400,
                  ),
                  softWrap: false,
                ),
                SizedBox(height: 20,),
                defaultTextFormField(
                  textEditingController:phoneController ,
                  textInputType: TextInputType.emailAddress,
                  label: "phone",
                  hint: "000000000",
                  validator: (  value){
                    if(value.isEmpty){
                      return "please enter phone ";
                    }
                  },
                  suffix:Icon(Icons.phone),

                ),

                defaultTextFormField(
                    hint: "",
                    textEditingController:passorwdController ,
                    textInputType: TextInputType.visiblePassword,

                    label: "password",
                    validator: (  value){
                      if(value.isEmpty){
                        return " password is too short";
                      }
                    },
                    suffix: IconButton(onPressed: (){
                      ostaLogincubit.get(context).changeicon();
                    }, icon: Icon(Icons.visibility_outlined)),

                    obscureText: ostaLogincubit.get(context).ispassword


                ),


                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "forgetPassword");
                        },
                        child: Text(
                          'نسيت كلمة المرور؟',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff7e7e7e),
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          softWrap: false,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'تذكرني',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xff2370a2),
                            ),

                          ),

                          SizedBox(
                            width: 25,
                            height: 25,
                            child: Checkbox(
                                shape: CircleBorder(),

                                activeColor: Color(0xff29F19B),
                                checkColor: Color(0xffffffff),
                                value: cubit.isChecked, onChanged: (bool? value){
                              cubit.changeRadio(value!);
                            }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                ConditionalBuilder(

                    condition:ostaLogincubit.get(context).isloding ,
                    builder: (context)=> InkWell(
                      onTap: (){
                        if(formkey.currentState!.validate()){
                          ostaLogincubit.get(context).marchenlogin(
                            phone: phoneController.text,
                            password: passorwdController.text,
                            context:context,

                          );
                          ostaLogincubit.get(context).loging();







                        }



                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Text(
                            'دخول',
                            style: TextStyle(
                              fontSize: 17,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-1.641, -0.872),
                            end: Alignment(1.353, 1.348),
                            colors: [const Color(0xff1e3a64), const Color(0xff5addff)],
                            stops: [0.0, 1.0],
                          ),                  borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    fallback: (context)=>Center(child: CircularProgressIndicator())
                ),
                SizedBox(height: 15,),

                InkWell(
                  onTap: (){

                    Navigator.pushNamed(context, "screen66");



                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: Text(
                        'تسجيل جديد',
                        style: TextStyle(
                          fontSize: 17,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1.641, -0.872),
                        end: Alignment(1.353, 1.348),
                        colors: [const Color(0xff1e3a64), const Color(0xff5addff)],
                        stops: [0.0, 1.0],
                      ),                  borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 15,),

                SizedBox(height: 15,),




              ],),
            ),
          ),
        ),
      );
    }, listener: (context,state){
      Fluttertoast.showToast(
          msg: "login scucess",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );





    });
  }


}
