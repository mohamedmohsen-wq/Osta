import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/model/citise/citise.dart';
import 'package:osta/model/gaverments/gaverments.dart';
import 'package:osta/shered/componnents/componnents.dart';

var nameController = TextEditingController();
var name2Controller = TextEditingController();
var gaverController = TextEditingController();
var ciityrController = TextEditingController();
var emailController = TextEditingController();
var phonController = TextEditingController();
var passorwdController = TextEditingController();
var passorwdforController = TextEditingController();
var farmkey = GlobalKey<FormState>();
String government='القاهرة';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit, OstaState>(
        builder: (context, state) {
          OstaCubit cubit = BlocProvider.of(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: farmkey,
                child: Column(
                  children: [
                    buildClipPath(context),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'تسجيل جديد',
                      style: TextStyle(
                        fontSize: 19,
                        color: const Color(0xff1c1b20),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defaultTextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please enter first name ";
                          }
                        },
                        textEditingController: nameController,
                        label: "الاسم الاول",
                        hint: "احمد",
                        suffix: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        )),
                    defaultTextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please enter last name ";
                          }
                        },
                        textEditingController: name2Controller,
                        label: "الاسم الثاني",
                        hint: " ابراهيم",
                        suffix: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        )),
                    defaultTextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please enter phone ";
                          }
                        },
                        textEditingController: phonController,
                        label: "رقم الموبايل",
                        hint: "0000 000 0000",
                        suffix: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Text("")),
                        ),
                        textInputType: TextInputType.number),

                    Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          focusColor: Color(0xff29f19b),
                          value: OstaCubit.getCubit(context).selectedValue,
                          validator: (value) {
                            if (value==null) {
                              return "please enter Governorate ";
                            }
                          },

                          hint: Text(
                            'محافظتك',
                          ),

                          decoration: InputDecoration(
                            
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Color(0xffE6E6E6),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),

                              borderSide: BorderSide(
                                color: Color(0xffE6E6E6),
                              ),
                            ),
                            labelText: "المحافظه",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff2370a2),
                              height: 1.4,
                            ),
                            hintText: "محافظتك",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff9c9c9c),
                              height: 1.5,
                            ),


                            border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          ),
                          isExpanded: true,
                          onChanged: (value) {
                            OstaCubit.getCubit(context).selectedValue=value as String?;

                          },
                          onSaved: (value) {
                            OstaCubit.getCubit(context).selectedValue=value as String?;

                          },

                          items: OstaCubit.getCubit(context).governoratesName
                              .map((String val) {
                            return DropdownMenuItem(
                              value: val,
                              child: Text(
                                val,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          focusColor: Color(0xff29f19b),
                          value: OstaCubit.getCubit(context).selectedValue,

                          validator: (value) {
                            if (value==null) {
                              return "please enter Cites ";
                            }
                          },

                          hint: Text(
                            'مدينتك',
                          ),

                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Color(0xffE6E6E6),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),

                              borderSide: BorderSide(
                                color: Color(0xffE6E6E6),
                              ),
                            ),
                            labelText: "المدينه",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff2370a2),
                              height: 1.4,
                            ),
                            hintText: "مدينتك",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff9c9c9c),
                              height: 1.5,
                            ),


                            border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          ),
                          isExpanded: true,
                          onChanged: (value) {
                            OstaCubit.getCubit(context).selectedValuecites=value as String?;

                          },
                          onSaved: (value) {
                            OstaCubit.getCubit(context).selectedValuecites=value as String?;

                          },

                          items: OstaCubit.getCubit(context).citiesName
                              .map((String val) {
                            return DropdownMenuItem(
                              value: val,
                              child: Text(
                                val,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),

                    // defaultTextFormField(
                    //     validator: (value) {
                    //       if (value.isEmpty) {
                    //         return "please enter gaverment ";
                    //       }
                    //     },
                    //     textEditingController: gaverController,
                    //
                    //     label: "المدينه",
                    //     hint: government,
                    //     suffix: IconButton(
                    //         onPressed: () {
                    //           showDialog(
                    //               context: context,
                    //               builder: (_) => Alert Dialog(
                    //                 title: Text("cittes"),
                    //                 content: Container(
                    //                   width: 201,
                    //                   height: 170,
                    //                   child: ConditionalBuilder(
                    //                       condition: true,
                    //                       builder: (context) =>
                    //                           Listv(context),
                    //                       fallback: (context) => Center(
                    //                           child:
                    //                           CircularProgressIndicator())),
                    //                   color: const Color(0xffffffff),
                    //                 ),
                    //               ));
                    //         },
                    //         icon: Icon(Icons.arrow_downward_sharp))),





                    defaultTextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please enter password ";
                          }
                        },
                        textEditingController: passorwdController,
                        label: "كلمة المرور",
                        hint: "",
                        suffix: IconButton(
                            onPressed: () {
                              cubit.changeLoginPassword();
                            },
                            icon: cubit.loginPassword
                                ? Icon(Icons.visibility_off_sharp)
                                : Icon(Icons.visibility),
                            color: Color(0xff1C1B20)),
                        obscureText: cubit.loginPassword,
                        textInputType: TextInputType.visiblePassword),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "TermsOfUse");
                                },
                                child: Text(
                                  'شروط الإستخدام',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: const Color(0xfff8ae00),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "لقد قرأت واوافق على",
                                style: TextStyle(
                                  fontFamily: 'DIN Next LT Arabic',
                                  fontSize: 16,
                                  color: const Color(0xff2370a2),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: Checkbox(
                                shape: CircleBorder(),
                                activeColor: Color(0xff0fd37f),
                                checkColor: Color(0xffffffff),
                                value: cubit.isChecked,
                                onChanged: (bool? value) {
                                  cubit.changeRadio(value!);
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ConditionalBuilder(
                        condition: cubit.isloding,
                        builder: (context) => InkWell(
                              onTap: () {
                                if (farmkey.currentState!.validate()) {
                                  OstaCubit.getCubit(context).userRegister(
                                      fname: nameController.text,
                                      lname: name2Controller.text,
                                      gaver: gaverController.text,
                                      citiy: ciityrController.text,
                                      phone: phonController.text,
                                      password: passorwdController.text,
                                      context: context);
                                  Navigator.pushNamed(context, "Login");
                                  cubit.loging();
                                }
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                  child: Text(
                                    'حفظ',
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
                                    colors: [
                                      const Color(0xff1e3a64),
                                      const Color(0xff5addff)
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                        fallback: (context) =>
                            Center(child: CircularProgressIndicator())),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }

  Widget defoltText(Cities model, context) {
    return Container(
      color: Colors.cyanAccent,
      child: Center(
        child: Text(
          '${model.cityNameAr}',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 12,
            color: const Color(0xff1d1d1b),
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }

  Widget Listv(context) {
    return  ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            onTap: () {
              OstaCubit.getCubit(context)
                  .changeoGoverIndex(OstaCubit.getCubit(context).currentGover);
            },
            child: defoltText(
                OstaCubit.getCubit(context).cities[index], context));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 2,

        );
      },
      itemCount: OstaCubit.getCubit(context).governoratesName.length,
    );
  }

  Widget defoltgoverText(Geovernorate model, context) {
    return Container(
      color: Colors.white10,
      child: Center(
        child: InkWell(
            onTap: () {
              government= OstaCubit.getCubit(context).governoratesName[ OstaCubit.getCubit(context).currentGover];
              OstaCubit.getCubit(context).changeoGoverIndex(
                  OstaCubit.getCubit(context).currentGover);
            },
            child: Text(
              '${model.name}',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: const Color(0xff1d1d1b),
              ),
              textAlign: TextAlign.right,
            )),
      ),
    );
  }

  Widget Listg(context,i) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            onTap: () {
             OstaCubit.getCubit(context).gaverr();
            },
            child: defoltgoverText(
                OstaCubit.getCubit(context).governorates[index], context));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 2,

        );
      },
      itemCount: OstaCubit.getCubit(context).governoratesName.length,
    );
  }
}
