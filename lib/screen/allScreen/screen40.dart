import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/wegit/componnents/componnents.dart';
class Screen40 extends StatelessWidget {
  const Screen40({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                child: Container(
                  margin: EdgeInsets.only(left: 26, right: 26,top: 30),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Text(
                        'عربة التسوق',
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
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height/60,horizontal: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      CircleAvatar(radius: 10,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.close_rounded,color: Colors.grey,size: 15,),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'تكييف تورنيدو اسبليت 3 حصان بارد\nديچيتال ، تبريد فائق السرعة',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff1c1b20),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Row(children: [

                                Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 14,
                                    color: const Color(0xff1bd4be),

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  '5.000',
                                  style: TextStyle(

                                    fontSize: 20,
                                    color: const Color(0xff1bd4be),
                                    fontWeight: FontWeight.w500,

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                              ],),




                            ],),
                          SizedBox(width: 5,),
                          Image.asset("images3/2.png",width: 65,height: 65,),
                        ],
                      )



                    ],)
                ],),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffe5e5e5)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x1a000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height/60,horizontal: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      CircleAvatar(radius: 10,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.close_rounded,color: Colors.grey,size: 15,),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'تكييف تورنيدو اسبليت 3 حصان بارد\nديچيتال ، تبريد فائق السرعة',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff1c1b20),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Row(children: [

                                Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 14,
                                    color: const Color(0xff1bd4be),

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  '5.000',
                                  style: TextStyle(

                                    fontSize: 20,
                                    color: const Color(0xff1bd4be),
                                    fontWeight: FontWeight.w500,

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                              ],),




                            ],),
                          SizedBox(width: 5,),
                          Image.asset("images3/2.png",width: 65,height: 65,),
                        ],
                      )



                    ],)
                ],),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffe5e5e5)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x1a000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(height: .5,width: double.infinity,color: Colors.grey,margin: EdgeInsets.symmetric(horizontal: 20),),
              SizedBox(height: 10,),

              SizedBox(height: 15,),

              SizedBox(height: 15,),
              Container(
                height: 259,
                width: double.infinity,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12,top: 10),
                      child: Image.asset("images3/Group 42926.png"),
                    ),
                    InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "OrderDone");
                        },
                        child: buildAlignbottomNavBa2r(context, "تأكيد الطلب"))
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
              )



            ],
          ),

        ),
        // bottomNavigationBar:               ,

      );
    }, listener: (context,state){});
  }
}
