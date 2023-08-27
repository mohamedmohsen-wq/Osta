import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/model/citise/citise.dart';
import 'package:osta/model/gaverments/gaverments.dart';
import 'package:osta/model/servece/servece.dart';
import 'package:osta/screen/rigisterclint/signUp.dart';

import 'package:osta/shered/componnents/componnents.dart';
import 'package:osta/wegit/componnents/componnents.dart';

class Screen69 extends StatelessWidget {
  const Screen69({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(
                    top: 25,
                    bottom: 10,
                    left: 26, right: 26),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                                            InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              width: 27,
                              height: 18,
                              child: Image.asset("images2/forwardarrow.png")),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),

                    Container(
                      width: 107,
                      height: 47,
                      child: Image.asset('images2/ostalogo1.png'),
                    ),

                    SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  'سجل كمقدم خدمة',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                  ),
                                  softWrap: false,
                                ),
                              ),

                              height: 36,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xfffecc00),
                                    const Color(0xfff8ae00)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              width: double.infinity,
              height: 229,
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
            SizedBox(height: 20,),
            // Text(
            //   'ابدأ الآن بالتسجيل كتاجر داخل اسطى للوصول\nإلى ملايين المشتركين فى اقل وقت ممكن',
            //   style: TextStyle(
            //     fontSize: 15,
            //     color: const Color(0xff1d1d1b),
            //     fontWeight: FontWeight.w500,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // SizedBox(height: 20,),

            // defaultTextFormField2(label: "الاسم التجاري", hint: "ادخل الاسم التجاري",label2: "*"),
            defaultTextFormField2(label: "الاسم", hint: "رقم بطاقتك",label2: "*"),
            defaultTextFormField2(label: "رقم البطاقه ", hint: "ادخل الاسم",label2: "*"),
            defaultTextFormField2(label: "رقم الموبايل", hint: "0000 000 0000",suffix: Container(decoration: BoxDecoration(shape: BoxShape.circle,),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Text("")
              ),
            ) ),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonFormField(
                  focusColor: Color(0xff29f19b),
                  value: OstaCubit.getCubit(context).selectedValue3,
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
                    OstaCubit.getCubit(context).selectedValue3=value as String?;

                  },
                  onSaved: (value) {
                    OstaCubit.getCubit(context).selectedValue3=value as String?;

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
                  value: OstaCubit.getCubit(context).selectedValue4,

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
                    OstaCubit.getCubit(context).selectedValuecites3=value as String?;

                  },
                  onSaved: (value) {
                    OstaCubit.getCubit(context).selectedValuecites3=value as String?;

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
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonFormField(
                  focusColor: Color(0xff29f19b),
                  value: OstaCubit.getCubit(context).selectedValue3,
                  validator: (value) {
                    if (value==null) {
                      return "please enter service ";
                    }
                  },

                  hint: Text(
                    'خدمات',
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
                    labelText: "الخدمه",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff2370a2),
                      height: 1.4,
                    ),
                    hintText: "الخدمه",
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
                    OstaCubit.getCubit(context).selectedValue4=value as String?;

                  },
                  onSaved: (value) {
                    OstaCubit.getCubit(context).selectedValue4=value as String?;

                  },

                  items: OstaCubit.getCubit(context).Servecesname
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
            defaultTextFormField2(label: "سنوات الخبره", hint: "ادخل سنوات خبرتك",label2: "*"),
            defaultTextFormField2(label: "كلمة المرور", hint: "*************",suffix:InkWell(onTap: (){cubit.changeLoginPassword();}, child: Icon(cubit.loginPassword==true?Icons.visibility_off:Icons.visibility,color: Colors.black,)),obscureText: cubit.loginPassword  ),
            defaultTextFormField2(label: "تأكيد كلمة المرور", hint: "*************",suffix:InkWell(onTap: (){cubit.changeLoginPassword2();}, child: Icon(cubit.loginPassword2==true?Icons.visibility_off:Icons.visibility,color: Colors.black,)),obscureText: cubit.loginPassword2  ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, "screen70");
                },
                child: buildAlignbottomNavBa2r(context, "التالي")),
          ],),
        ),
      );
    }, listener: (context,state){});
  }
  // Widget defoltTextt(
  //     Servece model,context
  //     ){
  //   return  Center(
  //     child: Text(
  //       '${model.name}',
  //       overflow:  TextOverflow.ellipsis,
  //       style: TextStyle(
  //         fontSize: 12,
  //
  //
  //         color:  Color(0xffE5CC13),
  //       ),
  //       textAlign: TextAlign.right,
  //
  //     ),
  //   );
  // }
  // Widget defoltText2(Servece model, context) {
  //   return Container(
  //     color: Colors.cyanAccent,
  //     child: Center(
  //       child: Text(
  //         '${model.name}',
  //         overflow: TextOverflow.ellipsis,
  //         style: TextStyle(
  //           fontSize: 12,
  //           color: const Color(0xff1d1d1b),
  //         ),
  //         textAlign: TextAlign.right,
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget Listv2(context) {
  //   return  ListView.separated(
  //     itemBuilder: (BuildContext context, int index) {
  //       return InkWell(
  //           onTap: () {
  //             OstaCubit.getCubit(context)
  //                 .changeoservisIndex(OstaCubit.getCubit(context).currentservise);
  //           },
  //           child: defoltText2(
  //               OstaCubit.getCubit(context).Serveces[index]  , context));
  //     },
  //     separatorBuilder: (BuildContext context, int index) {
  //       return Container(
  //         height: 2,
  //
  //       );
  //     },
  //     itemCount: OstaCubit.getCubit(context).Serveces.length,
  //   );
  // }
  //
  // Widget defoltText(Cities model, context) {
  //   return Container(
  //     color: Colors.cyanAccent,
  //     child: Center(
  //       child: Text(
  //         '${model.cityNameAr}',
  //         overflow: TextOverflow.ellipsis,
  //         style: TextStyle(
  //           fontSize: 12,
  //           color: const Color(0xff1d1d1b),
  //         ),
  //         textAlign: TextAlign.right,
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget Listv(context) {
  //   return  ListView.separated(
  //     itemBuilder: (BuildContext context, int index) {
  //       return InkWell(
  //           onTap: () {
  //             OstaCubit.getCubit(context)
  //                 .changeoGoverIndex(OstaCubit.getCubit(context).currentGover);
  //           },
  //           child: defoltText(
  //               OstaCubit.getCubit(context).cities[index], context));
  //     },
  //     separatorBuilder: (BuildContext context, int index) {
  //       return Container(
  //         height: 2,
  //
  //       );
  //     },
  //     itemCount: OstaCubit.getCubit(context).governoratesName.length,
  //   );
  // }
  //
  // Widget defoltgoverText(Geovernorate model, context) {
  //   return Container(
  //     color: Colors.white10,
  //     child: Center(
  //       child: InkWell(
  //           onTap: () {
  //             government= OstaCubit.getCubit(context).governoratesName[ OstaCubit.getCubit(context).currentGover];
  //             OstaCubit.getCubit(context).changeoGoverIndex(
  //                 OstaCubit.getCubit(context).currentGover);
  //           },
  //           child: Text(
  //             '${model.name}',
  //             overflow: TextOverflow.ellipsis,
  //             style: TextStyle(
  //               fontSize: 12,
  //               color: const Color(0xff1d1d1b),
  //             ),
  //             textAlign: TextAlign.right,
  //           )),
  //     ),
  //   );
  // }
  //
  // Widget Listg(context,i) {
  //   return ListView.separated(
  //     itemBuilder: (BuildContext context, int index) {
  //       return InkWell(
  //           onTap: () {
  //             OstaCubit.getCubit(context).gaverr();
  //           },
  //           child: defoltgoverText(
  //               OstaCubit.getCubit(context).governorates[index], context));
  //     },
  //     separatorBuilder: (BuildContext context, int index) {
  //       return Container(
  //         height: 2,
  //
  //       );
  //     },
  //     itemCount: OstaCubit.getCubit(context).governoratesName.length,
  //   );
  // }

}
