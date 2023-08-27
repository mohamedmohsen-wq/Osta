import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/model/Acount/Acount.dart';
import 'package:osta/shered/componnents/componnents.dart';
class Acount extends StatefulWidget {

  @override
  State<Acount> createState() => _AcountState();
}

class _AcountState extends State<Acount> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(
      builder: (BuildContext context, state) {
        OstaCubit cubit = BlocProvider.of(context);
        return  Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:105 ,
                  width: 375,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 16,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                    Text(
                      'كل العروض',
                      style: TextStyle(
                       
                        fontSize: 16,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),

                    arrowBack(context)
                    
                  ],),
                ),
                SizedBox(height: 10,),
                grd(context)








              ],
            ),
          ),


        );


      },


      listener: (BuildContext context, Object? state) {  },

    );

  }
  Widget grd(
      context
      )=>GridView.count(
    physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
    shrinkWrap: true,
    padding: EdgeInsets.symmetric(horizontal: 10),
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 5,
    childAspectRatio: 1,
    children:  List.generate(
        OstaCubit.getCubit(context).Acount.length,
            (index) => conter(OstaCubit.getCubit(context).Acount[index],context))

    ,);
  Widget conter( Acounts? model,context,)=>  Container(
    margin: EdgeInsets.only(left: 20,right: 15),
    height: 218,
    width: 159,
    child: SingleChildScrollView(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "screen8");
        },
        child: Container(
          child: Column(children: [
            Container(
              height: 7,
              width: 159,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.419, 0.0),
                  end: Alignment(0.942, 0.0),
                  colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
            Column(


              children: [


                Image.asset(
                  "images3/images.jpeg",
                  width: 74,
                  height: 73,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [

                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(

                          children: [
                            Text(
                              'الاسم :',
                              style: TextStyle(

                                fontSize: 10,
                                color: const Color(0xff2370a2),
                                height: 1.5,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '${model!.name}',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height:3,),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(

                          children: [
                            Text(
                              'الخدمه:',
                              style: TextStyle(

                                fontSize: 10,
                                color: const Color(0xff2370a2),
                                height: 1.5,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '${model.servicesId}',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3,),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(

                          children: [
                            Text(
                              'سنوات الخبره :',
                              style: TextStyle(

                                fontSize: 10,
                                color: const Color(0xff2370a2),
                                height: 1.5,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '${model.yearsOfExperrience}',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      // InkWell(
                      //   onTap: (){
                      //     Navigator.pushNamed(context, "screen8");
                      //   },
                      //   child: Container(
                      //     width: 139,
                      //     height: 28,
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           'done',
                      //           style: TextStyle(
                      //
                      //             fontSize: 15,
                      //             color: const Color(0xff707070),
                      //           ),
                      //           softWrap: false,
                      //         )
                      //       ],
                      //     ),
                      //     decoration: BoxDecoration(
                      //       gradient: LinearGradient(
                      //         begin: Alignment(-0.774, -0.666),
                      //         end: Alignment(0.746, 0.822),
                      //         colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                      //         stops: [0.0, 1.0],
                      //       ),
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: const Color(0x4067d652),
                      //           offset: Offset(0, 5),
                      //           blurRadius: 12,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // )


                    ],),
                )


                // Container(
                //   margin: EdgeInsets.only(left: 10,right: 10),
                //   height: 60,
                //   width: 70,
                //   child: Image.network(""),
                //   decoration: BoxDecoration(
                //     color: const Color(0xffffffff),
                //     borderRadius: BorderRadius.circular(8.0),
                //     boxShadow: [
                //       BoxShadow(
                //         color: const Color(0x0d000000),
                //         offset: Offset(0, 3),
                //         blurRadius: 20,
                //       ),
                //     ],
                //   ),
                // )

              ],),
          ],)
        ),
      ),
    ),
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [
        BoxShadow(
          color: const Color(0x0d000000),
          offset: Offset(0, 3),
          blurRadius: 20,
        ),
      ],
    ),
  );
}
