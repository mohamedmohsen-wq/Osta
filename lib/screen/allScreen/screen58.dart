import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/shered/componnents/componnents.dart';


import '../../block/cubit.dart';
import '../../block/state.dart';
import '../../wegit/componnents/componnents.dart';
class Screen58 extends StatelessWidget {
   Screen58({Key? key}) : super(key: key);
    var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<OstaCubit, OstaState>(
        builder: (context, state) {
          OstaCubit cubit = BlocProvider.of(context);
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFFFFFFF),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 112,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-1.0, 0.103),
                            end: Alignment(0.975, 0.218),
                            colors: [
                              const Color(0xff29f19b),
                              const Color(0xff0db6e1)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 23.0, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(""),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text(
                                  'المحفظة',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
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
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset(
                              "images3/wallet.png",
                              width: 132,
                              height: 132,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'رصيدك الحالي',
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color(0xff2370a2),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 55,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 70),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0x2b29f19b),
                                    const Color(0x2b0db6e1)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'جنيه',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: const Color(0xff1ec1ad),
                                      ),
                                      softWrap: false,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      '250',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          scaffoldKey.currentState!
                              .showBottomSheet((context) => Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(""),
                                      Text(
                                        'شحن رصيد',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: const Color(0xff2370a2),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 18.0),
                                        child: CircleAvatar(backgroundColor: Colors.grey[200],radius: 12,child: Center(child: InkWell(
                                            onTap: (){
                                              Navigator.maybePop(context);
                                            },
                                            child: Icon(Icons.close_rounded,color: Colors.black,size: 15,)))),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'حدد المبلغ المراد إضافة إلى المحفظة',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: const Color(0xff1d1d1b),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  defaultTextFormField2(
                                      label: "",
                                      hint: "500",
                                      widthLabel: 0,
                                      textInputType:
                                      TextInputType.number),

                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                      scaffoldKey.currentState!.showBottomSheet((context) =>Container(
                                        height: 400,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("        "),
                                                Text(
                                                  'شحن رصيد',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    color: const Color(0xff2370a2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: CircleAvatar(backgroundColor: Colors.grey[200],radius: 12,child: Center(child: InkWell(
                                                      onTap: (){
                                                        Navigator.maybePop(context);
                                                      },
                                                      child: Icon(Icons.close_rounded,color: Colors.black,size: 15,)))),
                                                ),

                                              ],
                                            ),

                                            Text(
                                              'ادخل بيانات بطاقة الدفع',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: const Color(0xff1d1d1b),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),

                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 10),
                                              child: Column(children: [
                                                Directionality(
                                                  textDirection: TextDirection.rtl,
                                                  child: TextFormField(
                                                      textDirection: TextDirection.rtl,
                                                      keyboardType: TextInputType.text,
                                                      style: TextStyle(
                                                        color: Color(0xff9C9C9C),
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintText: 'مصطفي',
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius.circular(25),
                                                              topRight: Radius.circular(25),
                                                              bottomLeft: Radius.circular(25),
                                                              bottomRight: Radius.circular(25)),
                                                          borderSide: BorderSide(
                                                            color: Color(0xFF9B9FBB),
                                                          ),
                                                        ),
                                                        label: Directionality(
                                                          textDirection: TextDirection.rtl,
                                                          child: Text(
                                                            'الاسم',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              color: const Color(0xff2370a2),
                                                            ),
                                                            textHeightBehavior: TextHeightBehavior(
                                                                applyHeightToFirstAscent: false),
                                                            softWrap: false,
                                                          ),
                                                        ),
                                                        labelStyle: TextStyle(
                                                            fontSize: 24, color: Color(0xff2370a2)),
                                                      )),
                                                ),
                                                SizedBox(height: 10,),
                                                Directionality(
                                                  textDirection: TextDirection.rtl,
                                                  child: TextFormField(

                                                      textDirection: TextDirection.rtl,
                                                      keyboardType: TextInputType.number,
                                                      style: TextStyle(
                                                        color: Color(0xff9C9C9C),
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintText: '0000 0000 000 00',
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius.circular(25),
                                                              topRight: Radius.circular(25),
                                                              bottomLeft: Radius.circular(25),
                                                              bottomRight: Radius.circular(25)),
                                                          borderSide: BorderSide(
                                                            color: Color(0xFF9B9FBB),
                                                          ),
                                                        ),
                                                        label: Directionality(
                                                          textDirection: TextDirection.rtl,
                                                          child: Text(
                                                            'رقم البطاقة',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              color: const Color(0xff2370a2),
                                                            ),
                                                            textHeightBehavior: TextHeightBehavior(
                                                                applyHeightToFirstAscent: false),
                                                            softWrap: false,
                                                          ),
                                                        ),
                                                        labelStyle: TextStyle(
                                                            fontSize: 24, color: Color(0xff2370a2)),
                                                      )),
                                                ),
                                                SizedBox(height: 10,),

                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Directionality(
                                                        textDirection: TextDirection.rtl,
                                                        child: TextFormField(
                                                            textDirection: TextDirection.rtl,
                                                            keyboardType: TextInputType.number,
                                                            style: TextStyle(
                                                              color: Color(0xff9C9C9C),
                                                            ),
                                                            decoration: const InputDecoration(
                                                              hintText: '05/24',
                                                              border: OutlineInputBorder(
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(25),
                                                                    topRight: Radius.circular(25),
                                                                    bottomLeft: Radius.circular(25),
                                                                    bottomRight: Radius.circular(25)),
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFF9B9FBB),
                                                                ),
                                                              ),
                                                              label: Text(
                                                                'MM/YY',
                                                                style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: Color(0xff2370a2),
                                                                  height: 1.4,
                                                                ),
                                                                textHeightBehavior: TextHeightBehavior(
                                                                    applyHeightToFirstAscent: false),
                                                                softWrap: false,
                                                              ),
                                                              labelStyle: TextStyle(
                                                                  fontSize: 24, color: Color(0xff2370a2)),
                                                            )),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 14,
                                                    ),
                                                    Expanded(
                                                      child: Directionality(
                                                        textDirection: TextDirection.rtl,
                                                        child: TextFormField(
                                                            textDirection: TextDirection.rtl,
                                                            keyboardType: TextInputType.number,
                                                            style: TextStyle(
                                                              color: Color(0xff9C9C9C),
                                                            ),
                                                            decoration: InputDecoration(
                                                              hintText: '123',
                                                              border: OutlineInputBorder(
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(25),
                                                                    topRight: Radius.circular(25),
                                                                    bottomLeft: Radius.circular(25),
                                                                    bottomRight: Radius.circular(25)),
                                                                borderSide: BorderSide(
                                                                  color: Color(0xFF9B9FBB),
                                                                ),
                                                              ),
                                                              label: Text(
                                                                'CVV',
                                                                style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: const Color(0xff2370a2),
                                                                  height: 1.4,
                                                                ),
                                                                textHeightBehavior: TextHeightBehavior(
                                                                    applyHeightToFirstAscent: false),
                                                                softWrap: false,
                                                              ),
                                                              labelStyle: TextStyle(
                                                                  fontSize: 24, color: Color(0xff2370a2)),
                                                            )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],),
                                            ),
                                            InkWell(
                                                onTap: (){
                                                  Navigator.pop(context);
                                                  showDialog(context: context, builder: (_){
                                                    return AlertDialog(
                                                      content: Container(
                                                        height: 206,
                                                        width: 200,

                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text(""),
                                                                CircleAvatar(backgroundColor: Colors.grey[200],radius: 12,child: Center(child: InkWell(
                                                                    onTap: (){
                                                                      Navigator.maybePop(context);
                                                                    },
                                                                    child: Icon(Icons.close_rounded,color: Colors.black,size: 15,)))),
                                                              ],),

                                                            Center(child: Image.asset("images3/Group 42446.png",width: 100,height: 100,)),
                                                            SizedBox(height: 15,),
                                                            Center(
                                                              child: Text(
                                                                'تم شحن رصيد محفظتك',
                                                                style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: const Color(0xff1ec1ad),
                                                                ),
                                                                textAlign: TextAlign.center,

                                                              ),
                                                            ),
                                                            Center(
                                                              child: Text(
                                                                'تم إضافة 500 جنيه',
                                                                style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: const Color(0xff1d1d1b),
                                                                ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  });
                                                },
                                                child: buildAlignbottomNavBa2r(context, "تأكيد"))

                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x2e287092),
                                              offset: Offset(0, 3),
                                              blurRadius: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                          enableDrag: false
                                      );

                                    },
                                    child: Container(
                                      child: Center(
                                        child: Container(
                                          height: 44,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Center(
                                            child: Text(
                                              'تأكيد',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: const Color(
                                                    0xffffffff),
                                                fontWeight:
                                                FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(
                                                  -1.641, -0.872),
                                              end: Alignment(
                                                  1.353, 1.348),
                                              colors: [
                                                const Color(0xff1e3a64),
                                                const Color(0xff5addff)
                                              ],
                                              stops: [0.0, 1.0],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(
                                                10.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(
                                                    0x3047c1f0),
                                                offset: Offset(0, 5),
                                                blurRadius: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      width: double.infinity,
                                      height: 87,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            const Color(0x2e287092),
                                            offset: Offset(0, 3),
                                            blurRadius: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x2e287092),
                                  offset: Offset(0, 3),
                                  blurRadius: 30,
                                ),
                              ],
                            ),
                          ));
                        },
                        child: Container(
                          height: 44,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              'شحن رصيد',
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3047c1f0),
                                offset: Offset(0, 5),
                                blurRadius: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 87,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x2e287092),
                          offset: Offset(0, 3),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }

  Future<dynamic> buildShowModalBottomSheet1(BuildContext context) {
    return showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext con) {
              return Container(
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Container(
                     margin: EdgeInsets.only(right: 10,top: 15),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(""),

                         Text(
                           'شحن رصيد',
                           style: TextStyle(
                             fontSize: 17,
                             color: const Color(0xff2370a2),
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                         InkWell(
                             onTap: (){
                               Navigator.pop(context);
                             },
                             child: Image.asset("images3/Group 42905.png",width: 27,height: 27,)),
                       ],
                     ),
                   ),
                   Text(
                     'حدد المبلغ المراد إضافة إلى المحفظة',
                     style: TextStyle(
                       fontSize: 17,
                       color: const Color(0xff1d1d1b),
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                    defaultTextFormField(label: "", hint: ""),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                          buildShowModalBottomSheet2(context);
                        },
                        child: buildAlignbottomNavBa2r(context, "تأكيد"))

                  ],
                ),

              );
            });
  }

  Future<dynamic> buildShowModalBottomSheet2(BuildContext context) {
    return showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                )),
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext con) {
                              return Container(
                                height: 400,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10,top: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(""),

                                          Text(
                                            'شحن رصيد',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: const Color(0xff2370a2),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                              child: Image.asset("images3/Group 42905.png",width: 27,height: 27,)),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'ادخل بيانات بطاقة الدفع',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: const Color(0xff1d1d1b),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                   Container(
                                     margin: EdgeInsets.symmetric(horizontal: 10),
                                     child: Column(children: [
                                       Directionality(
                                         textDirection: TextDirection.rtl,
                                         child: TextFormField(
                                             textDirection: TextDirection.rtl,
                                             keyboardType: TextInputType.text,
                                             style: TextStyle(
                                               color: Color(0xff9C9C9C),
                                             ),
                                             decoration: InputDecoration(
                                               hintText: 'مصطفي',
                                               border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.only(
                                                     topLeft: Radius.circular(25),
                                                     topRight: Radius.circular(25),
                                                     bottomLeft: Radius.circular(25),
                                                     bottomRight: Radius.circular(25)),
                                                 borderSide: BorderSide(
                                                   color: Color(0xFF9B9FBB),
                                                 ),
                                               ),
                                               label: Directionality(
                                                 textDirection: TextDirection.rtl,
                                                 child: Text(
                                                   'الاسم',
                                                   style: TextStyle(
                                                     fontSize: 15,
                                                     color: const Color(0xff2370a2),
                                                   ),
                                                   textHeightBehavior: TextHeightBehavior(
                                                       applyHeightToFirstAscent: false),
                                                   softWrap: false,
                                                 ),
                                               ),
                                               labelStyle: TextStyle(
                                                   fontSize: 24, color: Color(0xff2370a2)),
                                             )),
                                       ),
                                       SizedBox(height: 10,),
                                       Directionality(
                                         textDirection: TextDirection.rtl,
                                         child: TextFormField(

                                             textDirection: TextDirection.rtl,
                                             keyboardType: TextInputType.number,
                                             style: TextStyle(
                                               color: Color(0xff9C9C9C),
                                             ),
                                             decoration: InputDecoration(
                                               hintText: '0000 0000 000 00',
                                               border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.only(
                                                     topLeft: Radius.circular(25),
                                                     topRight: Radius.circular(25),
                                                     bottomLeft: Radius.circular(25),
                                                     bottomRight: Radius.circular(25)),
                                                 borderSide: BorderSide(
                                                   color: Color(0xFF9B9FBB),
                                                 ),
                                               ),
                                               label: Directionality(
                                                 textDirection: TextDirection.rtl,
                                                 child: Text(
                                                   'رقم البطاقة',
                                                   style: TextStyle(
                                                     fontSize: 15,
                                                     color: const Color(0xff2370a2),
                                                   ),
                                                   textHeightBehavior: TextHeightBehavior(
                                                       applyHeightToFirstAscent: false),
                                                   softWrap: false,
                                                 ),
                                               ),
                                               labelStyle: TextStyle(
                                                   fontSize: 24, color: Color(0xff2370a2)),
                                             )),
                                       ),
                                       SizedBox(height: 10,),

                                       Row(
                                         children: [
                                           Expanded(
                                             child: Directionality(
                                               textDirection: TextDirection.rtl,
                                               child: TextFormField(
                                                   textDirection: TextDirection.rtl,
                                                   keyboardType: TextInputType.number,
                                                   style: TextStyle(
                                                     color: Color(0xff9C9C9C),
                                                   ),
                                                   decoration: const InputDecoration(
                                                     hintText: '05/24',
                                                     border: OutlineInputBorder(
                                                       borderRadius: BorderRadius.only(
                                                           topLeft: Radius.circular(25),
                                                           topRight: Radius.circular(25),
                                                           bottomLeft: Radius.circular(25),
                                                           bottomRight: Radius.circular(25)),
                                                       borderSide: BorderSide(
                                                         color: Color(0xFF9B9FBB),
                                                       ),
                                                     ),
                                                     label: Text(
                                                       'MM/YY',
                                                       style: TextStyle(
                                                         fontSize: 15,
                                                         color: Color(0xff2370a2),
                                                         height: 1.4,
                                                       ),
                                                       textHeightBehavior: TextHeightBehavior(
                                                           applyHeightToFirstAscent: false),
                                                       softWrap: false,
                                                     ),
                                                     labelStyle: TextStyle(
                                                         fontSize: 24, color: Color(0xff2370a2)),
                                                   )),
                                             ),
                                           ),
                                           SizedBox(
                                             width: 14,
                                           ),
                                           Expanded(
                                             child: Directionality(
                                               textDirection: TextDirection.rtl,
                                               child: TextFormField(
                                                   textDirection: TextDirection.rtl,
                                                   keyboardType: TextInputType.number,
                                                   style: TextStyle(
                                                     color: Color(0xff9C9C9C),
                                                   ),
                                                   decoration: InputDecoration(
                                                     hintText: '123',
                                                     border: OutlineInputBorder(
                                                       borderRadius: BorderRadius.only(
                                                           topLeft: Radius.circular(25),
                                                           topRight: Radius.circular(25),
                                                           bottomLeft: Radius.circular(25),
                                                           bottomRight: Radius.circular(25)),
                                                       borderSide: BorderSide(
                                                         color: Color(0xFF9B9FBB),
                                                       ),
                                                     ),
                                                     label: Text(
                                                       'CVV',
                                                       style: TextStyle(
                                                         fontSize: 15,
                                                         color: const Color(0xff2370a2),
                                                         height: 1.4,
                                                       ),
                                                       textHeightBehavior: TextHeightBehavior(
                                                           applyHeightToFirstAscent: false),
                                                       softWrap: false,
                                                     ),
                                                     labelStyle: TextStyle(
                                                         fontSize: 24, color: Color(0xff2370a2)),
                                                   )),
                                             ),
                                           ),
                                         ],
                                       ),
                                     ],),
                                   ),
                                    InkWell(
                                        onTap: (){
                                          Navigator.pop(context);
                                          showDialog(context: context, builder: (_){
                                            return AlertDialog(
                                              content: Container(
                                                height: 206,
                                                width: 200,

                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(3.0),
                                                      child: InkWell(
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          },
                                                          child: Image.asset("images3/Group 42905.png",width: 27,height: 27,)),
                                                    ),

                                                    Center(child: Image.asset("images3/Group 42446.png",width: 100,height: 100,)),
                                                 SizedBox(height: 15,),
                                                    Center(
                                                      child: Text(
                                                        'تم شحن رصيد محفظتك',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: const Color(0xff1ec1ad),
                                                        ),
                                                        textAlign: TextAlign.center,

                                                      ),
                                                    ),
                                                    Center(
                                                      child: Text(
                                                        'تم إضافة 500 جنيه',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: const Color(0xff1d1d1b),
                                                        ),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                        },
                                        child: buildAlignbottomNavBa2r(context, "تأكيد"))

                                  ],
                                ),

                              );
                            });
  }
}

