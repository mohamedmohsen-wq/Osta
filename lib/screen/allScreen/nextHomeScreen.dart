// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:osta/block/cubit.dart';
// import 'package:osta/block/state.dart';
//
// class Screen8 extends StatelessWidget {
//   const Screen8({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
//       final String name = ModalRoute.of(context)!.settings.arguments as String;
//       OstaCubit cubit = BlocProvider.of(context);
//       Widget AskForABasicWarranty()=>Column(
//         children: [
//           SizedBox(height: 10,),
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(right: 10,left: 20),
//             height: 40,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: (){
//                         cubit.changeAskForABasicWarranty(0);
//                       },
//                       child: CircleAvatar(
//                         radius: 13,
//                         backgroundColor: cubit.AskForABasicWarranty==0?Color(0xff29F19B):Color(0xffF6F6F6) ,
//                         child: CircleAvatar(
//                           radius: 11,
//                           backgroundColor: Colors.white,
//                           child: SizedBox(
//                             width: 25,
//                             height: 25,
//                             child: Checkbox(
//                                 shape: CircleBorder(
//
//                                 ),
//
//                                 activeColor: Color(0xff29F19B),
//                                 checkColor: Color(0xff29F19B),
//                                 value:  cubit.AskForABasicWarranty==0?true:false, onChanged: (bool? value){
//                               cubit.changeAskForABasicWarranty(0);
//                             }),
//                           ),
//                         ),
//                       ),
//                     ),
// SizedBox(width: 5,),
//                     Text(
//                       'جنيه\t20 +',
//                       style: TextStyle(
//                         fontSize: 11,
//                         color: const Color(0xff1ec1ad),
//                       ),
//                       softWrap: false,
//                     )
//                   ],
//                 ),
//                 Text(
//                   'ضمان لمدة 30 يوم',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: const Color(0xff1d1d1b),
//                   ),
//                 ),
//
//               ],
//             ),
//             decoration: BoxDecoration(
//               color: const Color(0xfff6f6f6),
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//           ),
//           SizedBox(height: 10,),
//
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(right: 10,left: 20),
//             height: 40,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: (){
//                         cubit.changeAskForABasicWarranty(1);
//                       },
//                       child: CircleAvatar(
//                         radius: 13,
//                         backgroundColor: cubit.AskForABasicWarranty==1?Color(0xff29F19B):Color(0xffF6F6F6) ,
//                         child: CircleAvatar(
//                           radius: 11,
//                           backgroundColor: Colors.white,
//                           child: SizedBox(
//                             width: 25,
//                             height: 25,
//                             child: Checkbox(
//                                 shape: CircleBorder(
//
//                                 ),
//
//                                 activeColor: Color(0xff29F19B),
//                                 checkColor: Color(0xff29F19B),
//                                 value:  cubit.AskForABasicWarranty==1?true:false, onChanged: (bool? value){
//                               cubit.changeAskForABasicWarranty(1);
//                             }),
//                           ),
//                         ),
//                       ),
//                     ),
// SizedBox(width: 5,),
//                     Text(
//                       'جنيه\t50 +',
//                       style: TextStyle(
//                         fontSize: 11,
//                         color: const Color(0xff1ec1ad),
//                       ),
//                       softWrap: false,
//                     )
//                   ],
//                 ),
//                 Text(
//                   'ضمان لمدة 60 يوم',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: const Color(0xff1d1d1b),
//                   ),
//                 ),
//
//               ],
//             ),
//             decoration: BoxDecoration(
//               color: const Color(0xfff6f6f6),
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//           ),
//           SizedBox(height: 10,),
//
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(right: 10,left: 20),
//             height: 40,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: (){
//                         cubit.changeAskForABasicWarranty(2);
//                       },
//                       child: CircleAvatar(
//                         radius: 13,
//                         backgroundColor: cubit.AskForABasicWarranty==2?Color(0xff29F19B):Color(0xffF6F6F6) ,
//                         child: CircleAvatar(
//                           radius: 11,
//                           backgroundColor: Colors.white,
//                           child: SizedBox(
//                             width: 25,
//                             height: 25,
//                             child: Checkbox(
//                                 shape: CircleBorder(
//
//                                 ),
//
//                                 activeColor: Color(0xff29F19B),
//                                 checkColor: Color(0xff29F19B),
//                                 value: cubit.AskForABasicWarranty==2?true:false, onChanged: (bool? value){
//                               cubit.changeAskForABasicWarranty(2);
//                             }),
//                           ),
//                         ),
//                       ),
//                     ),
// SizedBox(width: 5,),
//                     Text(
//                       'جنيه\t70 +',
//                       style: TextStyle(
//                         fontSize: 11,
//                         color: const Color(0xff1ec1ad),
//                       ),
//                       softWrap: false,
//                     )
//                   ],
//                 ),
//                 Text(
//                   'ضمان لمدة 90 يوم',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: const Color(0xff1d1d1b),
//                   ),
//                 ),
//
//               ],
//             ),
//             decoration: BoxDecoration(
//               color: const Color(0xfff6f6f6),
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//           ),
//         ],
//       );
//       var scaffoldKey = GlobalKey<ScaffoldState>();
//       return Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Color(0xffFFFFFF),
//         body: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: [
//                 Container(
//                   child: Container(
//                     margin: EdgeInsets.only(left: 26, right: 26),
//                     width: double.infinity,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(height: 30,),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(""),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 18.0),
//                               child: Text(
//                                 name,
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: const Color(0xffffffff),
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 softWrap: false,
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                               child: Container(
//                                   width: 27,
//                                   height: 18,
//                                   child: Image.asset("images2/forwardarrow.png")),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 0,),
//
//                         Container(
//                           width: 107,
//                           height: 47,
//                           child: Image.asset('images2/ostalogo1.png'),
//                         )
//                       ],
//                     ),
//                   ),
//                   width: double.infinity,
//                   height: 160,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-1.0, 0.103),
//                       end: Alignment(0.975, 0.218),
//                       colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
//                       stops: [0.0, 1.0],
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(30.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   width: double.infinity,
//                   margin: EdgeInsets.only(left: 14, right: 14),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Container(
//                         height: 36,
//                         width: double.infinity,
//                         child: Center(
//                           child: Text(
//                             'ما تحصل عليه مع اسطى',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: const Color(0xff2370a2),
//                               fontWeight: FontWeight.w500,
//                             ),
//                             softWrap: false,
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xfff3f3f3),
//                           borderRadius: BorderRadius.circular(8.0),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 9,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       width: 33,
//                                       height: 33,
//                                       child: Image.asset('images2/schedule.png'),
//                                     ),
//                                     Text(
//                                       'إنجاز',
//                                       style: TextStyle(
//                                         fontSize: 13,
//                                         color: const Color(0xff1d1d1b),
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       softWrap: false,
//                                     )
//                                   ],
//                                 ),
//                                 height: 78,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x24fe6387),
//                                   borderRadius: BorderRadius.circular(8.0),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 9,
//                             ),
//                             Expanded(
//                               child: Container(
//                                 height: 78,
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       width: 33,
//                                       height: 33,
//                                       child: Image.asset('images2/insurance.png'),
//                                     ),
//                                     Text(
//                                       'ضمان 30 يوم',
//                                       style: TextStyle(
//                                         fontSize: 13,
//                                         color: const Color(0xff1d1d1b),
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       softWrap: false,
//                                     )
//                                   ],
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x2b45d5a3),
//                                   borderRadius: BorderRadius.circular(8.0),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 9,
//                             ),
//                             Expanded(
//                               child: Container(
//                                 height: 78,
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       width: 33,
//                                       height: 33,
//                                       child: Image.asset('images2/medal.png'),
//                                     ),
//                                     Text(
//                                       'جودة',
//                                       style: TextStyle(
//                                         fontSize: 13,
//                                         color: const Color(0xff1d1d1b),
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       softWrap: false,
//                                     )
//                                   ],
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x2efeb600),
//                                   borderRadius: BorderRadius.circular(8.0),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         child: Image.asset('images2/divider.png'),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         height: 85,
//                         child: Container(
//                           margin: EdgeInsets.only(right: 17, left: 19),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Center(
//                                 child: Container(
//                                   width: 30,
//                                   height: 30,
//                                   child: Image.asset('images2/edit.png'),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Padding(
//                                         padding:
//                                         const EdgeInsets.only(right: 10.0),
//                                         child: Text(
//                                           'العنوان',
//                                           style: TextStyle(
//                                             fontSize: 15,
//                                             color: const Color(0xff2370a2),
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                           softWrap: false,
//                                         ),
//                                       ),
//                                       Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.end,
//                                         children: [
//                                           Padding(
//                                             padding:
//                                             const EdgeInsets.only(right: 8.0),
//                                             child: Text(
//                                               'المنزل',
//                                               style: TextStyle(
//                                                 fontSize: 13,
//                                                 color: const Color(0xff1d1d1b),
//                                               ),
//                                               softWrap: false,
//                                             ),
//                                           ),
//                                           Text(
//                                             'ش 7 بجوار المترو , المعادي',
//                                             style: TextStyle(
//                                               fontSize: 12,
//                                               color: const Color(0xff9c9c9c),
//                                             ),
//                                             softWrap: false,
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: 9,
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.only(bottom: 37),
//                                     width: 19,
//                                     height: 25,
//                                     child: Image.asset('images2/location.png'),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                               width: 1.0, color: const Color(0xffebebeb)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0x0d000000),
//                               offset: Offset(0, 3),
//                               blurRadius: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 17, left: 19),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 width: 26,
//                                 height: 26,
//                                 child: Center(
//                                   child: InkWell(
//                                     onTap: (){
//                                       cubit.changeAskForABasicWarrantyIsShow();
//                                     },
//                                     child: Icon(
//                                       cubit.AskForABasicWarrantyIsShow==false?Icons.keyboard_arrow_down_sharp:Icons.keyboard_arrow_up_rounded,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     begin: Alignment(0.0, -1.0),
//                                     end: Alignment(0.0, 1.0),
//                                     colors: [
//                                       const Color(0xff29f19b),
//                                       const Color(0xff0db6e1)
//                                     ],
//                                     stops: [0.0, 1.0],
//                                   ),
//                                   borderRadius: BorderRadius.all(
//                                       Radius.elliptical(10000000.0, 10000000.0)),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     'اطلب ضمان اسطى',
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       color: const Color(0xff2370a2),
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     width: 27,
//                                     height: 25,
//                                     child: Image.asset('images2/ostalogo2.png'),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         height: 46,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                               width: 1.0, color: const Color(0xffebebeb)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0x0d000000),
//                               offset: Offset(0, 3),
//                               blurRadius: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                       cubit.AskForABasicWarrantyIsShow==true?AskForABasicWarranty():SizedBox(height: 0,),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         child: Image.asset('images2/divider.png'),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Container(
//                         child:   Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Directionality(
//                               textDirection: TextDirection.rtl,
//
//                               child:   TextFormField(
//
//                                 keyboardType: TextInputType.multiline,
//                                 maxLines: 4,
//
//                                 decoration: InputDecoration(
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(15.0),
//
//                                       borderSide: BorderSide(
//                                         color: Color(0xffE6E6E6),
//                                       ),),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(15.0),
//
//                                       borderSide: BorderSide(
//                                         color: Color(0xffE6E6E6),
//                                       ),),
//
//                                     alignLabelWithHint: true,
//                                     hintText: "اكتب مشكلتك هنا",
//                                     hintStyle: TextStyle(
//                                       fontSize: 13,
//                                       color: const Color(0xff9c9c9c),
//                                     ),
//                                     labelText: "وصف المشكلة",
//                                     labelStyle: TextStyle(
//
//                                       fontSize: 14,
//                                       color: const Color(0xff2370a2),
//                                     ),
//                                     border: OutlineInputBorder(),
//                                     suffixIcon:
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 90.0),
//                                       child: Image.asset("images2/camera.png",width: 25,height: 20,),
//                                     )
//
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         child: Image.asset('images2/divider.png'),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             'طريقة الدفع',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: const Color(0xff2370a2),
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             softWrap: false,
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                           Container(
//                             width: 27,
//                             height: 27,
//                             child: Image.asset('images2/credit-card.png'),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Container(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 17, left: 19),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               InkWell(
//                                 onTap: (){
//                                   cubit.changeIsChecked8(0);
//                                 },
//                                 child: CircleAvatar(
//                                   radius: 13,
//                                   backgroundColor:cubit.isChecked8==0?Color(0xff29F19B):Colors.white ,
//                                   child: CircleAvatar(
//                                     radius: 11,
//                                     backgroundColor: Colors.white,
//                                     child: SizedBox(
//                                       width: 25,
//                                       height: 25,
//                                       child: Checkbox(
//                                           shape: CircleBorder(
//
//                                           ),
//
//                                           activeColor: Color(0xff29F19B),
//                                           checkColor: Color(0xff29F19B),
//                                           value: cubit.isChecked8==0?true:false, onChanged: (bool? value){
//                                         cubit.changeIsChecked8(0);
//                                       }),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     'كاش',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: const Color(0xff1d1d1b),
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Container(
//                                     width: 22,
//                                     height: 16,
//                                     child: Image.asset('images2/cash-stack.png'),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         width: double.infinity,
//                         height: 46,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                               width: 1.0, color: const Color(0xffebebeb)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0x0d000000),
//                               offset: Offset(0, 3),
//                               blurRadius: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Container(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 17, left: 19),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               InkWell(
//                                 onTap: (){
//                                   cubit.changeIsChecked8(1);
//                                 },
//                                 child: CircleAvatar(
//                                   radius: 13,
//                                   backgroundColor:cubit.isChecked8==1?Color(0xff29F19B):Colors.white ,
//                                   child: CircleAvatar(
//                                     radius: 11,
//                                     backgroundColor: Colors.white,
//                                     child: SizedBox(
//                                       width: 25,
//                                       height: 25,
//                                       child: Checkbox(
//                                           shape: CircleBorder(
//
//                                           ),
//
//                                           activeColor: Color(0xff29F19B),
//                                           checkColor: Color(0xff29F19B),
//                                           value: cubit.isChecked8==1?true:false, onChanged: (bool? value){
//                                         cubit.changeIsChecked8(1);
//                                       }),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     'بطاقات ائتمانية',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: const Color(0xff1d1d1b),
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Container(
//                                     width: 22,
//                                     height: 16,
//                                     child:
//                                     Image.asset('images2/credit-card2.png'),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         width: double.infinity,
//                         height: 46,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                               width: 1.0, color: const Color(0xffebebeb)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0x0d000000),
//                               offset: Offset(0, 3),
//                               blurRadius: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                        cubit.isChecked8==1?cardBank():SizedBox(height: 0,),
//                       SizedBox(
//                         height: cubit.isChecked8==1?14:1,
//                       ),
//                       Container(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 17, left: 19),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               InkWell(
//                                 onTap: (){
//                                   cubit.changeIsChecked8(2);
//                                   // scaffoldKey.currentState!.showBottomSheet((context) {
//                                   //   return Container(
//                                   //     width: double.infinity,
//                                   //     child: Column(children: [
//                                   //
//                                   //     ],),
//                                   //   );
//                                   // } );
//                                 },
//                                 child: CircleAvatar(
//                                   radius: 13,
//                                   backgroundColor:cubit.isChecked8==2?Color(0xff29F19B):Colors.white ,
//                                   child: CircleAvatar(
//                                     radius: 11,
//                                     backgroundColor: Colors.white,
//                                     child: SizedBox(
//                                       width: 25,
//                                       height: 25,
//                                       child: Checkbox(
//                                           shape: CircleBorder(
//
//                                           ),
//
//                                           activeColor: Color(0xff29F19B),
//                                           checkColor: Color(0xff29F19B),
//                                           value: cubit.isChecked8==2?true:false, onChanged: (bool? value){
//                                         cubit.changeIsChecked8(2);
//                                       }),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     'محافظ الكترونية',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: const Color(0xff1d1d1b),
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Container(
//                                     width: 22,
//                                     height: 16,
//                                     child: Image.asset('images2/metroscreen.png'),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         width: double.infinity,
//                         height: 46,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.circular(8.0),
//                           border: Border.all(
//                               width: 1.0, color: const Color(0xffebebeb)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0x0d000000),
//                               offset: Offset(0, 3),
//                               blurRadius: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             'كود الخصم',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: const Color(0xff2370a2),
//                               height: 1.4,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             softWrap: false,
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                           Container(
//                             width: 27,
//                             height: 27,
//                             child: Image.asset('images2/coupon.png'),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       Container(
//                         child: Container(
//                           margin: EdgeInsets.only(
//                             right: 17,
//                           ),
//                           child: Center(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   width: 39,
//                                   height: 42,
//                                   child: Center(
//                                     child: Container(
//                                         width: 16,
//                                         height: 10,
//                                         child: Image.asset('images2/Select.png')),
//                                   ),
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       begin: Alignment(-1.0, 0.476),
//                                       end: Alignment(1.0, 0.216),
//                                       colors: [
//                                         const Color(0xff29f19b),
//                                         const Color(0xff0db6e1)
//                                       ],
//                                       stops: [0.0, 1.0],
//                                     ),
//                                     borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(10.0),
//                                       bottomLeft: Radius.circular(10.0),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   'We56rQf41',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: const Color(0xff9c9c9c),
//                                     height: 1.5,
//                                   ),
//                                   textHeightBehavior: TextHeightBehavior(
//                                       applyHeightToFirstAscent: false),
//                                   softWrap: false,
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.circular(10.0),
//                           border: Border.all(
//                               width: 1.0, color: const Color(0xffe6e6e6)),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             'لديك خصم 30 جنيه من قيمة الاوردر',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: const Color(0xfff8ae00),
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             softWrap: false,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 15,),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//
//                   child: Container(
//                     height: 88,
//
//                     width: double.infinity,
//                     child: Container(
//
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width * .141,
//                             height: 44,
//                             child: Container(
//                                 width: 26.39,
//                                 height: 26.39,
//                                 child: Image.asset('images2/timer.png',fit: BoxFit.fill,)),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment(-1.641, -0.872),
//                                 end: Alignment(1.353, 1.348),
//                                 colors: [
//                                   const Color(0xfffecc00),
//                                   const Color(0xfff8ae00)
//                                 ],
//                                 stops: [0.0, 1.0],
//                               ),
//                               borderRadius: BorderRadius.circular(10.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color(0x40fecc00),
//                                   offset: Offset(0, 5),
//                                   blurRadius: 12,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 7,
//                           ),
//                           Container(
//                             height: 44,
//                             child: Center(
//                               child: Text(
//                                 'إرسل الآن',
//                                 style: TextStyle(
//                                   fontSize: 17,
//                                   color: const Color(0xffffffff),
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 softWrap: false,
//                               ),
//                             ),
//                             width: MediaQuery.of(context).size.width * .82,
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment(-1.641, -0.872),
//                                 end: Alignment(1.353, 1.348),
//                                 colors: [
//                                   const Color(0xff1e3a64),
//                                   const Color(0xff5addff)
//                                 ],
//                                 stops: [0.0, 1.0],
//                               ),
//                               borderRadius: BorderRadius.circular(10.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color(0x3047c1f0),
//                                   offset: Offset(0, 5),
//                                   blurRadius: 12,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                       color: const Color(0xffffffff),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(22.0),
//                         topRight: Radius.circular(22.0),
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0x2e287092),
//                           offset: Offset(0, 3),
//                           blurRadius: 30,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             width: double.infinity,
//             color: Color(0xffFFFFFF),
//           ),
//         ),
//       );
//
//     }, listener: (context,state){});
//
//   }
//   Widget cardBank()=>Column(children: [
//     Directionality(
//       textDirection: TextDirection.rtl,
//       child: TextFormField(
//           textDirection: TextDirection.rtl,
//           keyboardType: TextInputType.text,
//           style: TextStyle(
//             color: Color(0xff9C9C9C),
//           ),
//           decoration: InputDecoration(
//             hintText: 'مصطفي',
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(25),
//                   topRight: Radius.circular(25),
//                   bottomLeft: Radius.circular(25),
//                   bottomRight: Radius.circular(25)),
//               borderSide: BorderSide(
//                 color: Color(0xFF9B9FBB),
//               ),
//             ),
//             label: Directionality(
//               textDirection: TextDirection.rtl,
//               child: Text(
//                 'الاسم',
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: const Color(0xff2370a2),
//                 ),
//                 textHeightBehavior: TextHeightBehavior(
//                     applyHeightToFirstAscent: false),
//                 softWrap: false,
//               ),
//             ),
//             labelStyle: TextStyle(
//                 fontSize: 24, color: Color(0xff2370a2)),
//           )),
//     ),
//     SizedBox(
//       height: 14,
//     ),
//     Directionality(
//       textDirection: TextDirection.rtl,
//       child: TextFormField(
//
//           textDirection: TextDirection.rtl,
//           keyboardType: TextInputType.number,
//           style: TextStyle(
//             color: Color(0xff9C9C9C),
//           ),
//           decoration: InputDecoration(
//             hintText: '0000 0000 000 00',
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(25),
//                   topRight: Radius.circular(25),
//                   bottomLeft: Radius.circular(25),
//                   bottomRight: Radius.circular(25)),
//               borderSide: BorderSide(
//                 color: Color(0xFF9B9FBB),
//               ),
//             ),
//             label: Directionality(
//               textDirection: TextDirection.rtl,
//               child: Text(
//                 'رقم البطاقة',
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: const Color(0xff2370a2),
//                 ),
//                 textHeightBehavior: TextHeightBehavior(
//                     applyHeightToFirstAscent: false),
//                 softWrap: false,
//               ),
//             ),
//             labelStyle: TextStyle(
//                 fontSize: 24, color: Color(0xff2370a2)),
//           )),
//     ),
//     SizedBox(
//       height: 14,
//     ),
//     Row(
//       children: [
//         Expanded(
//           child: Directionality(
//             textDirection: TextDirection.rtl,
//             child: TextFormField(
//                 textDirection: TextDirection.rtl,
//                 keyboardType: TextInputType.number,
//                 style: TextStyle(
//                   color: Color(0xff9C9C9C),
//                 ),
//                 decoration: const InputDecoration(
//                   hintText: '05/24',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(25),
//                         topRight: Radius.circular(25),
//                         bottomLeft: Radius.circular(25),
//                         bottomRight: Radius.circular(25)),
//                     borderSide: BorderSide(
//                       color: Color(0xFF9B9FBB),
//                     ),
//                   ),
//                   label: Text(
//                     'MM/YY',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Color(0xff2370a2),
//                       height: 1.4,
//                     ),
//                     textHeightBehavior: TextHeightBehavior(
//                         applyHeightToFirstAscent: false),
//                     softWrap: false,
//                   ),
//                   labelStyle: TextStyle(
//                       fontSize: 24, color: Color(0xff2370a2)),
//                 )),
//           ),
//         ),
//         SizedBox(
//           width: 14,
//         ),
//         Expanded(
//           child: Directionality(
//             textDirection: TextDirection.rtl,
//             child: TextFormField(
//                 textDirection: TextDirection.rtl,
//                 keyboardType: TextInputType.number,
//                 style: TextStyle(
//                   color: Color(0xff9C9C9C),
//                 ),
//                 decoration: InputDecoration(
//                   hintText: '123',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(25),
//                         topRight: Radius.circular(25),
//                         bottomLeft: Radius.circular(25),
//                         bottomRight: Radius.circular(25)),
//                     borderSide: BorderSide(
//                       color: Color(0xFF9B9FBB),
//                     ),
//                   ),
//                   label: Text(
//                     'CVV',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: const Color(0xff2370a2),
//                       height: 1.4,
//                     ),
//                     textHeightBehavior: TextHeightBehavior(
//                         applyHeightToFirstAscent: false),
//                     softWrap: false,
//                   ),
//                   labelStyle: TextStyle(
//                       fontSize: 24, color: Color(0xff2370a2)),
//                 )),
//           ),
//         ),
//       ],
//     ),
//   ],);
// }
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/network/lock/caoh_hilber.dart';


import '../../wegit/componnents/componnents.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){

      OstaCubit cubit = BlocProvider.of(context);
      Widget AskForABasicWarranty()=>Column(
        children: [
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(right: 10,left: 20),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        cubit.changeAskForABasicWarranty(0);
                      },
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: cubit.AskForABasicWarranty==0?Color(0xff29F19B):Color(0xffF6F6F6) ,
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
                                value:  cubit.AskForABasicWarranty==0?true:false, onChanged: (bool? value){
                              cubit.changeAskForABasicWarranty(0);
                            }),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Row(
                      children: [
                        Text(
                          'جنيه',
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff1ec1ad),
                          ),
                          softWrap: false,
                        ),
                        Text(
                          '+20',
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff1ec1ad),
                          ),
                          softWrap: false,
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'ضمان لمدة 30 يوم',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xff1d1d1b),
                  ),
                ),

              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xfff6f6f6),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(right: 10,left: 20),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        cubit.changeAskForABasicWarranty(1);
                      },
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: cubit.AskForABasicWarranty==1?Color(0xff29F19B):Color(0xffF6F6F6) ,
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
                                value:  cubit.AskForABasicWarranty==1?true:false, onChanged: (bool? value){
                              cubit.changeAskForABasicWarranty(1);
                            }),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Row(
                      children: [
                        Text(
                          'جنيه',
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff1ec1ad),
                          ),
                          softWrap: false,
                        ),
                        Text(
                          '+50',
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff1ec1ad),
                          ),
                          softWrap: false,
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'ضمان لمدة 60 يوم',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xff1d1d1b),
                  ),
                ),

              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xfff6f6f6),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(right: 10,left: 20),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        cubit.changeAskForABasicWarranty(2);
                      },
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: cubit.AskForABasicWarranty==2?Color(0xff29F19B):Color(0xffF6F6F6) ,
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
                                value: cubit.AskForABasicWarranty==2?true:false, onChanged: (bool? value){
                              cubit.changeAskForABasicWarranty(2);
                            }),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Row(
                      children: [
                        Text(
                          'جنيه',
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff1ec1ad),
                          ),
                          softWrap: false,
                        ),
                        Text(
                          '+70',
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff1ec1ad),
                          ),
                          softWrap: false,
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'ضمان لمدة 90 يوم',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xff1d1d1b),
                  ),
                ),

              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xfff6f6f6),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      );

      return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body:
        SingleChildScrollView(
          child: Column(
            children: [

              Container(
                child: Container(
                  margin: EdgeInsets.only(left: 26, right: 26),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("      "),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              "",
                              style: TextStyle(
                                fontSize: 16,
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
                      SizedBox(height: 0,),

                      Container(
                        width: 107,
                        height: 47,
                        child: Image.asset('images2/ostalogo1.png'),
                      )
                    ],
                  ),
                ),
                width: double.infinity,
                height: 160,
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
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 14, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 36,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'ما تحصل عليه مع اسطى',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff2370a2),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 33,
                                    height: 33,
                                    child: Image.asset('images2/schedule.png'),
                                  ),
                                  Text(
                                    'إنجاز',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff1d1d1b),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    softWrap: false,
                                  )
                                ],
                              ),
                              height: 78,
                              decoration: BoxDecoration(
                                color: const Color(0x24fe6387),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Expanded(
                            child: Container(
                              height: 78,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 33,
                                    height: 33,
                                    child: Image.asset('images2/insurance.png'),
                                  ),
                                  Text(
                                    'ضمان 30 يوم',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff1d1d1b),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    softWrap: false,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0x2b45d5a3),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Expanded(
                            child: Container(
                              height: 78,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 33,
                                    height: 33,
                                    child: Image.asset('images2/medal.png'),
                                  ),
                                  Text(
                                    'جودة',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff1d1d1b),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    softWrap: false,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0x2efeb600),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: double.infinity,
                      child: Image.asset('images2/divider.png'),
                    ),
                    SizedBox(
                      height: 14,
                    ),
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(right: 17, left: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 26,
                              height: 26,
                              child: Center(
                                child: InkWell(
                                  onTap: (){
                                    cubit.changeAskForABasicWarrantyIsShow();
                                  },
                                  child: Icon(
                                    cubit.AskForABasicWarrantyIsShow==false?Icons.keyboard_arrow_down_sharp:Icons.keyboard_arrow_up_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff29f19b),
                                    const Color(0xff0db6e1)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10000000.0, 10000000.0)),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'اطلب ضمان اسطى',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: const Color(0xff2370a2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 27,
                                  height: 25,
                                  child: Image.asset('images2/ostalogo2.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      height: 46,
                      width: double.infinity,
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
                    cubit.AskForABasicWarrantyIsShow==true?AskForABasicWarranty():SizedBox(height: 0,),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: double.infinity,
                      child: Image.asset('images2/divider.png'),
                    ),
                    SizedBox(
                      height: 14,
                    ),

                    //todo  الفئات الفرعية


                    SizedBox(height: 10,),

                    Container(
                      child:   Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,

                            child:   TextFormField(
                              controller: OstaCubit.getCubit(context).deteles,



                              keyboardType: TextInputType.multiline,
                              maxLines: 4,

                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),

                                    borderSide: BorderSide(
                                      color: Color(0xffE6E6E6),
                                    ),),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),

                                    borderSide: BorderSide(
                                      color: Color(0xffE6E6E6),
                                    ),),

                                  alignLabelWithHint: true,
                                  hintText: "اكتب مشكلتك هنا",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: const Color(0xff9c9c9c),
                                  ),
                                  labelText: "وصف المشكلة",
                                  labelStyle: TextStyle(

                                    fontSize: 14,
                                    color: const Color(0xff2370a2),
                                  ),
                                  border: OutlineInputBorder(),


                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: double.infinity,
                      child: Image.asset('images2/divider.png'),
                    ),
                    SizedBox(
                      height: 14,
                    ),




                    SizedBox(
                      height: 8,
                    ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.bottomCenter,

                child: Container(
                  height: 88,

                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .141,
                          height: 44,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: InkWell(
                            onTap: (){
showModalBottomSheet(context: context, builder: (_){
  return Container(
    height: 350,
    child: Column(
      children: [
        Expanded(
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            minimumDate: DateTime(2000),
            maximumDate: DateTime.now().add(
              const Duration(days: 2*365)
            ),
            initialDateTime: OstaCubit.getCubit(context).datatime,
            onDateTimeChanged: ( i) {
             OstaCubit.getCubit(context).datatime=i;
              //Do Some thing

            },

            minuteInterval: 1,
          ),
        ),
        InkWell(child: buildAlignbottomNavBa2r(context, "تأكيد"),onTap: (){

          Navigator.pop(context);


        },)                                    ],
    ),
  );
});
                            },
                            child: Container(
                                width: 26.39,
                                height: 26.39,
                                child: Image.asset('images2/timer.png',fit: BoxFit.fill,)),
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.641, -0.872),
                              end: Alignment(1.353, 1.348),
                              colors: [
                                const Color(0xfffecc00),
                                const Color(0xfff8ae00)
                              ],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x40fecc00),
                                offset: Offset(0, 5),
                                blurRadius: 12,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        InkWell(
                          onTap: (){
                            OstaCubit.getCubit(context).Sends();
                            String? id =CacheHelper.getData(key: 'id') == null? null: CacheHelper.getData(key: 'id');


                          },
                          child: Container(

                            height: 44,

                            child: Center(
                              child: Text(
                                'إرسل الآن',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                                softWrap: false,
                              ),
                            ),
                            width: 250,

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
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22.0),
                      topRight: Radius.circular(22.0),
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
              ),
            ],
          ),
        ),
      );

    }, listener: (context,state){});

  }

}
