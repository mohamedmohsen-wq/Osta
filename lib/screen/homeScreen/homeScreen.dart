import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/model/servece/servece.dart';
import 'package:osta/shered/componnents/componnents.dart';


import '../../model/item.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<OstaCubit,OstaState>(


        builder: (BuildContext context, state) {
          OstaCubit cubit = BlocProvider.of(context);
          return SingleChildScrollView(

            child: Column(

              children: [

                Container(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 60),
                  height: 181,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "screen40");
                              },
                              child: Image.asset("images3/Group 37921.png",width: 33,height: 31,)),
                          Image.asset("images3/osataLogo.png",width: 70,height: 30,),
                          buildInkWellNotification(context),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Image.asset("images3/home.png",width: 110,height: 45,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'مرحبـا بك',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  'مصطفي ابراهيم',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      )

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



                // اختر بين سوق او طلب مقاول
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Row (
                    children: [
                      Expanded(child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "screen27");
                        },
                        child: Container(height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 28.0),
                                child: Text(
                                  'اطلب\nمقاول',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    height: 1.2352941176470589,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Image.asset("images3/safety-at-work.png",width: 69,height: 69,)
                            ],),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [const Color(0xfffecc00), const Color(0xfff8ae00)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child:InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "screen32");
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 38.0),
                                child: Text(
                                  'السوق',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Image.asset("images3/shoppingcart.png",width: 65,height: 65,)
                            ],
                          ),
                          height: 90,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.895, -0.589),
                              end: Alignment(-0.729, 0.76),
                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),

                // all item

                SizedBox(height: 20,),
                ConditionalBuilder(

                    condition: true,
                    builder: (context)=>grid( context),
                    fallback: (context)=>Center(child: CircularProgressIndicator())
                ),


              ],
            ),
          );
        },
        listener: (BuildContext context, Object? state) {  },

      );
  }
  Widget grid(
      context,

      ){
    return  GridView.count(
      physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 10),
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      childAspectRatio: 1,
      children:  List.generate(
          OstaCubit.getCubit(context).Serveces.length,
           (index) => contenir(OstaCubit.getCubit(context).Serveces[index], context,))

      ,);
  }
  Widget contenir(
      Servece? model,context,
      ){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "Acount",);
      },
      child: Container(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Image.network("${model!.image1}",width: 100,height: 70,),

            Container(
              child: Center(child: Text("${model!.name}"),),
              width: double.infinity,
              height: 27,
              decoration: BoxDecoration(
                color: const Color(0x45ffffff),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x04000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xffAAB2E9),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: const Color(0x0d000000),
              offset: Offset(0, 3),
              blurRadius: 20,
            ),
          ],
        ),
      ),
    );
  }

}
