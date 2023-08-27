import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
class Screen38 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 112,
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
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "screen40");
                        },
                        child: Image.asset("images3/Group 37921.png",width: 33.49,height: 31.01,)),
                    Text(""),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Image.asset("images1/mo1.png",)),


                  ],),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              height: 260,
              child: ImageSlideshow(
                initialPage: 2,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: Colors.yellow[900],
                isLoop: false,
                width: double.infinity,
                //autoPlayInterval: 3000,
                children: [
                  buildContainerSlider(),
                  buildContainerSlider(),
                  buildContainerSlider(),
                  buildContainerSlider(),

                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'تكييف تورنيدو اسبليت 3 حصان بارد ديچيتال تبريد\nفائق السرعة',
                  style: TextStyle(

                    fontSize: 15,
                    color: const Color(0xff1c1b20),

                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                alignment: Alignment.centerRight,

                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "screen39");
                      },
                      child: Container(
                        height: 26,
                        width: 164,
                        decoration: BoxDecoration(
                          color: const Color(0xffdff2ff),
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عرض المنتجات',
                                style: TextStyle(

                                  fontSize: 11,
                                  color: const Color(0xff1ec1ad),

                                ),
                                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                              Row(children: [
                                Text(
                                  'شارب',
                                  style: TextStyle(

                                    fontSize: 11,
                                    color: const Color(0xff2d648c),

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                                SizedBox(width:6,),
                                Image.asset("images1/shape.png",width: 24,height: 24,),

                              ],),


                            ],),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 16.0,left: 16),
              child: Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 97,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0x1f1ec1ad),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            cubit.changeValue(1);
                          },
                          child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom:12.0),
                                child: Icon(Icons.minimize,size: 20,color: Colors.white,),
                              )
                          ),
                        ),
                        Text(
                          '${cubit.value}',
                          style: TextStyle(
                            fontFamily: 'Proxima Nova',
                            fontSize: 16,
                            color: const Color(0xff1c1b20),
                          ),
                          softWrap: false,
                        ),
                        InkWell(
                          onTap: (){
cubit.changeValue(0);
                          },
                          child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Icon(Icons.add,size: 20,color: Colors.white,)
                          ),
                        ),
                      ],),
                  ),
                  Text(""),
                  Row(children: [

                    Text(
                      'جنيه (شامل القيمة المضافة)',
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

                ],),),
            ),
            SizedBox(height: 15,),
            Container(height: 1,color: Color(0xFFEBEBEB),margin: EdgeInsets.symmetric(horizontal: 10),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'الوصف',
                  style: TextStyle(

                    fontSize: 16,
                    color: const Color(0xff2370a2),
                    fontWeight: FontWeight.w500,

                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'لوريم إيبسوم طريقة لكتابة النصوص في التصميم الجرافيكي\nتستخدم بشكل شائع لتوضيح الشكل المرئي للمستند لوريم\nإيبسوم طريقة لكتابة النصوص في التصميم',
                  style: TextStyle(

                    fontSize: 14,
                    color: const Color(0xff7e7e7e),  height: 1.7142857142857142,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),),
            ),
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              height: 87,
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
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 15,),
                          height: 44,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.641, -0.872),
                              end: Alignment(1.353, 1.348),
                              colors: [const Color(0xff1e3a64), const Color(0xff5addff)],
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
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'إضافة لعربة التسوق',
                                style: TextStyle(

                                  fontSize: 16,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                                softWrap: false,
                              ),
                              SizedBox(width: 5,),

                              Image.asset("images1/cart.png",width: 18.29,
                                height: 20.58,),
                            ],)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(height: 5,width: 134,color: Color(0xFFB7BDC8),)
              ],),
            ),
          ],),

        ),),
      );
    }, listener: (context,state){});
  }

  Container buildContainerSlider() {
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                height: 254.69,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 1.5, color: const Color(0xffefefef)),
                ),
                child: Column(children: [
                  Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 10),

                      child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),color: Color(0xFF7E7E7E),)),
                  Container(
                      child: Column(children: [
                        Image.asset("images1/2.png",width: 200,height: 200,),
                      ],)



                  ),


                ],),

              );
  }
}
