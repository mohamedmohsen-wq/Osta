import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';


import '../../wegit/componnents/componnents.dart';
class OrderDone extends StatelessWidget {
  const OrderDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return  Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(

              child: Container(
                margin: EdgeInsets.only(left: 26, right: 26,top: 30),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Text(
                      'تأكيد الطلب',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
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
              width: double.infinity,
              height: 105,
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
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             child: Column(children: [
               SizedBox(height: 10,),
               Container(  
                 width: double.infinity,
                 height: 85,
                 child: Container(
                   margin: EdgeInsets.only(right: 17, left: 19),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Center(
                         child: Container(
                           width: 30,
                           height: 30,
                           child: Image.asset('images2/edit.png'),
                         ),
                       ),
                       Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Padding(
                                 padding:
                                 const EdgeInsets.only(right: 10.0),
                                 child: Text(
                                   'العنوان',
                                   style: TextStyle(
                                     fontSize: 15,
                                     color: const Color(0xff2370a2),
                                     fontWeight: FontWeight.w500,
                                   ),
                                   softWrap: false,
                                 ),
                               ),
                               Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.end,
                                 children: [
                                   Padding(
                                     padding:
                                     const EdgeInsets.only(right: 8.0),
                                     child: Text(
                                       'المنزل',
                                       style: TextStyle(
                                         fontSize: 13,
                                         color: const Color(0xff1d1d1b),
                                       ),
                                       softWrap: false,
                                     ),
                                   ),
                                   Text(
                                     'ش 7 بجوار المترو , المعادي',
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: const Color(0xff9c9c9c),
                                     ),
                                     softWrap: false,
                                   ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(
                             width: 9,
                           ),
                           Container(
                             margin: EdgeInsets.only(bottom: 37),
                             width: 19,
                             height: 25,
                             child: Image.asset('images2/location.png'),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 decoration: BoxDecoration(
                   color: const Color(0xffffffff),
                   borderRadius: BorderRadius.circular(8.0),
                   border: Border.all(
                       width: 1.0, color: const Color(0xffebebeb)),
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0x0d000000),
                       offset: Offset(0, 3),
                       blurRadius: 20,
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
               Container(height: .3,width: double.infinity,color: Colors.grey,),
               SizedBox(height: 10,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text(
                     'طريقة الدفع',
                     style: TextStyle(
                       fontSize: 15,
                       color: const Color(0xff2370a2),
                     ),
                     textHeightBehavior: TextHeightBehavior(
                         applyHeightToFirstAscent: false),
                     softWrap: false,
                   ),
                   SizedBox(
                     width: 4,
                   ),
                   Container(
                     width: 27,
                     height: 27,
                     child: Image.asset('images2/credit-card.png'),
                   )
                 ],
               ),
               SizedBox(
                 height: 14,
               ),
               Container(
                 child: Container(
                   margin: EdgeInsets.only(right: 17, left: 19),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         onTap: (){
                           cubit.changeIsChecked8(0);
                         },
                         child: CircleAvatar(
                           radius: 13,
                           backgroundColor:cubit.isChecked8==0?Color(0xff29F19B):Colors.white ,
                           child: CircleAvatar(
                             radius: 11,
                             backgroundColor: Colors.white,
                             child: SizedBox(
                               width: 25,
                               height: 25,
                               child: Checkbox(
                                   shape: CircleBorder(

                                   ),

                                   activeColor: Color(0xff29F19B),
                                   checkColor: Color(0xff29F19B),
                                   value: cubit.isChecked8==0?true:false, onChanged: (bool? value){
                                 cubit.changeIsChecked8(0);
                               }),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Text(
                             'كاش',
                             style: TextStyle(
                               fontSize: 14,
                               color: const Color(0xff1d1d1b),
                             ),
                             softWrap: false,
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Container(
                             width: 22,
                             height: 16,
                             child: Image.asset('images2/cash-stack.png'),
                           )
                         ],
                       )
                     ],
                   ),
                 ),
                 width: double.infinity,
                 height: 46,
                 decoration: BoxDecoration(
                   color: const Color(0xffffffff),
                   borderRadius: BorderRadius.circular(8.0),
                   border: Border.all(
                       width: 1.0, color: const Color(0xffebebeb)),
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0x0d000000),
                       offset: Offset(0, 3),
                       blurRadius: 20,
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 14,
               ),
               Container(
                 child: Container(
                   margin: EdgeInsets.only(right: 17, left: 19),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         onTap: (){
                           cubit.changeIsChecked8(3);//3 is wallet
                         },
                         child: CircleAvatar(
                           radius: 13,
                           backgroundColor:cubit.isChecked8==3?Color(0xff29F19B):Colors.white ,
                           child: CircleAvatar(
                             radius: 11,
                             backgroundColor: Colors.white,
                             child: SizedBox(
                               width: 25,
                               height: 25,
                               child: Checkbox(
                                   shape: CircleBorder(

                                   ),

                                   activeColor: Color(0xff29F19B),
                                   checkColor: Color(0xff29F19B),
                                   value: cubit.isChecked8==3?true:false, onChanged: (bool? value){
                                 cubit.changeIsChecked8(3);
                               }),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Text(
                             'المحفظة',
                             style: TextStyle(
                               fontSize: 14,
                               color: const Color(0xff1d1d1b),
                             ),
                             softWrap: false,
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Container(
                             width: 30,
                             height: 20,
                             child: Image.asset('images3/wallet.png'),
                           )
                         ],
                       )
                     ],
                   ),
                 ),
                 width: double.infinity,
                 height: 46,
                 decoration: BoxDecoration(
                   color: const Color(0xffffffff),
                   borderRadius: BorderRadius.circular(8.0),
                   border: Border.all(
                       width: 1.0, color: const Color(0xffebebeb)),
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0x0d000000),
                       offset: Offset(0, 3),
                       blurRadius: 20,
                     ),
                   ],
                 ),
               ),

               SizedBox(
                 height: 14,
               ),
               Container(
                 child: Container(
                   margin: EdgeInsets.only(right: 17, left: 19),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         onTap: (){
                           cubit.changeIsChecked8(1);
                         },
                         child: CircleAvatar(
                           radius: 13,
                           backgroundColor:cubit.isChecked8==1?Color(0xff29F19B):Colors.white ,
                           child: CircleAvatar(
                             radius: 11,
                             backgroundColor: Colors.white,
                             child: SizedBox(
                               width: 25,
                               height: 25,
                               child: Checkbox(
                                   shape: CircleBorder(

                                   ),

                                   activeColor: Color(0xff29F19B),
                                   checkColor: Color(0xff29F19B),
                                   value: cubit.isChecked8==1?true:false, onChanged: (bool? value){
                                 cubit.changeIsChecked8(1);
                               }),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Text(
                             'بطاقات ائتمانية',
                             style: TextStyle(
                               fontSize: 14,
                               color: const Color(0xff1d1d1b),
                             ),
                             softWrap: false,
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Container(
                             width: 22,
                             height: 16,
                             child:
                             Image.asset('images2/credit-card2.png'),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 width: double.infinity,
                 height: 46,
                 decoration: BoxDecoration(
                   color: const Color(0xffffffff),
                   borderRadius: BorderRadius.circular(8.0),
                   border: Border.all(
                       width: 1.0, color: const Color(0xffebebeb)),
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0x0d000000),
                       offset: Offset(0, 3),
                       blurRadius: 20,
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 14,
               ),
               cubit.isChecked8==1?cardBank():SizedBox(height: 0,),
               SizedBox(
                 height: cubit.isChecked8==1?14:1,
               ),
               Container(
                 child: Container(
                   margin: EdgeInsets.only(right: 17, left: 19),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         onTap: (){
                           cubit.changeIsChecked8(2);
                           // scaffoldKey.currentState!.showBottomSheet((context) {
                           //   return Container(
                           //     width: double.infinity,
                           //     child: Column(children: [
                           //
                           //     ],),
                           //   );
                           // } );
                         },
                         child: CircleAvatar(
                           radius: 13,
                           backgroundColor:cubit.isChecked8==2?Color(0xff29F19B):Colors.white ,
                           child: CircleAvatar(
                             radius: 11,
                             backgroundColor: Colors.white,
                             child: SizedBox(
                               width: 25,
                               height: 25,
                               child: Checkbox(
                                   shape: CircleBorder(

                                   ),

                                   activeColor: Color(0xff29F19B),
                                   checkColor: Color(0xff29F19B),
                                   value: cubit.isChecked8==2?true:false, onChanged: (bool? value){
                                 cubit.changeIsChecked8(2);
                               }),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Text(
                             'محافظ الكترونية',
                             style: TextStyle(
                               fontSize: 14,
                               color: const Color(0xff1d1d1b),
                             ),
                             softWrap: false,
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Container(
                             width: 22,
                             height: 16,
                             child: Image.asset('images2/metroscreen.png'),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 width: double.infinity,
                 height: 46,
                 decoration: BoxDecoration(
                   color: const Color(0xffffffff),
                   borderRadius: BorderRadius.circular(8.0),
                   border: Border.all(
                       width: 1.0, color: const Color(0xffebebeb)),
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0x0d000000),
                       offset: Offset(0, 3),
                       blurRadius: 20,
                     ),
                   ],
                 ),
               ),
               cubit.isChecked8==2?defaultTextFormField(label: "رقم الموبايل", hint: "0000 000 0000", suffix: Container(decoration: BoxDecoration(shape: BoxShape.circle,),
                 child: Directionality(
                   textDirection: TextDirection.ltr,
                   child: CountryCodePicker(
                     showDropDownButton: true,

                     flagWidth: 40,
                     flagDecoration: BoxDecoration(
                       shape: BoxShape.circle,
                     ),
                     dialogSize: Size(300, 300),
                     padding: EdgeInsets.only(right: 5),


                     textStyle: TextStyle(
                         color: Color(0xff1C1B20), fontWeight: FontWeight.w500),

                     onChanged: print,

                     // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')

                     initialSelection: 'eg',

                     favorite: ['+20', 'eg'],

                     // optional. Shows only country name and flag

                     showCountryOnly: false,

                     // optional. Shows only country name and flag when popup is closed.

                     showOnlyCountryWhenClosed: false,

                     // optional. aligns the flag and the Text left

                     alignLeft: false,
                   ),
                 ),
               ),textInputType: TextInputType.number,horizontal: 0)
                   :SizedBox(height: 0,),
               SizedBox(
                 height: cubit.isChecked8==2?14:1,
               ),
               SizedBox(
                 height: 14,
               ),
               Container(
                 child: Container(
                   margin: EdgeInsets.only(right: 17, left: 19),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         onTap: (){
                           cubit.changeIsChecked8(4);//3 is apple pay
                         },
                         child: CircleAvatar(
                           radius: 13,
                           backgroundColor:cubit.isChecked8==4?Color(0xff29F19B):Colors.white ,
                           child: CircleAvatar(
                             radius: 11,
                             backgroundColor: Colors.white,
                             child: SizedBox(
                               width: 25,
                               height: 25,
                               child: Checkbox(
                                   shape: CircleBorder(

                                   ),

                                   activeColor: Color(0xff29F19B),
                                   checkColor: Color(0xff29F19B),
                                   value: cubit.isChecked8==4?true:false, onChanged: (bool? value){
                                 cubit.changeIsChecked8(4);
                               }),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Text(
                             'ابل باي',
                             style: TextStyle(
                               fontSize: 14,
                               color: const Color(0xff1d1d1b),
                             ),
                             softWrap: false,
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Container(
                             width: 30,
                             height: 20,
                             child: Image.asset('images3/apple-pay.png'),
                           )
                         ],
                       )
                     ],
                   ),
                 ),
                 width: double.infinity,
                 height: 46,
                 decoration: BoxDecoration(
                   color: const Color(0xffffffff),
                   borderRadius: BorderRadius.circular(8.0),
                   border: Border.all(
                       width: 1.0, color: const Color(0xffebebeb)),
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0x0d000000),
                       offset: Offset(0, 3),
                       blurRadius: 20,
                     ),
                   ],
                 ),
               ),

               SizedBox(
                 height: 14,
               ),
             ],),
           ),
            Container(
              height: 250,
              width: double.infinity,

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12,top: 5),
                    child: Image.asset("images3/Group 42926.png"),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "HomeScreen");
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


          ],),
        ),
      );
    }, listener: (context,state){});
  }
  Widget cardBank()=>Column(children: [
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
    SizedBox(
      height: 14,
    ),
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
    SizedBox(
      height: 14,
    ),
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
  ],);

}
