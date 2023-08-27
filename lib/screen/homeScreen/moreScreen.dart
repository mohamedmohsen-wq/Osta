import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';

import 'package:osta/shered/componnents/componnents.dart';

class More extends StatelessWidget {
   More({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 181,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "screen40");
                        },
                        child: Image.asset(
                          "images3/Group 37921.png",
                          width: 33,
                          height: 31,
                        ),
                      ),
                      Image.asset(
                        "images3/osataLogo.png",
                        width: 120,
                        height: 100,
                      ),
                      buildInkWellNotification(context),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Image.asset(
                          "images3/home.png",
                          width: 110,
                          height: 35,
                        ),
                      ),
                      Text(""),
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
            SizedBox(
              height: 10,
            ),


            buildContainer(image: "images3/logoIconSmall.png",name: "كن شريك",onTap: (){Navigator.pushNamed(context, "screen66");}),

            buildContainer(image: "images3/information.png",name: "مركز المساعدة",widthSizedBox: 15,onTap: (){Navigator.pushNamed(context, "screen72");}),

            buildContainer(image: "images3/file.png",name: "شروط الإستخدام",widthSizedBox: 15,onTap: (){Navigator.pushNamed(context, "TermsOfUse");}),


            Container(
              height: 6,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [



                ],
              ),

            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "screen75");
              },
              child: Container(
                height: 46,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Switch(value: cubit.notificationSwitch, onChanged: (newValue){
                      cubit.changeNotificationSwitch();
                    },
                    activeColor: Color(0xff29F19B),

                    ),
                    Row(
                      children: [
                        Text(
                          'الإشعارات',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff2370a2),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                        SizedBox(width: 20,),
                        Image.asset("images3/notification1.png",width: 26,height: 26,),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffebebeb)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0d000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                showDialog(context: context, builder: (_){
                  return AlertDialog(
                    content: Container(
                      height: 120,
                      width: 120,
                      child: Column(
                        children: [
                          Text(
                            ' هل انت متأكد من تسجيل الخروج ؟ ',
                            style: TextStyle(
                              fontFamily: 'Vazirmatn',
                              fontSize: 18,
                              color:  Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'الغاء',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    height: 33,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.962, 0.0),
                                        end: Alignment(0.965, 0.484),
                                        colors: [const Color(0xff3d90b4), const Color(0xff5addff)],
                                        stops: [0.0, 1.0],
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 10,),
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.of(context).pushNamedAndRemoveUntil('Login', (Route<dynamic> route) => false);
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'خروج',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    height: 33,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.962, 0.0),
                                        end: Alignment(0.965, 0.484),
                                        colors: [const Color(0xffe87f7f), const Color(0xff9f0c2e )],
                                        stops: [0.0, 1.0],
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  );
                });
              },
              child: Container(
                height: 46,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Row(
                      children: [
                        Text(
                          'تسجيل الخروج',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xffee6561),
                            fontWeight: FontWeight.w500,
                          ),
                        ),                    SizedBox(width: 10,),
                        Image.asset("images3/log-out.png",width: 26,height: 26,),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffebebeb)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0d000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),

          ],
        ),
      );
    }, listener: (context,state){});
  }

  Widget buildContainer({
  required String name,
  required String image,
    double widthSizedBox = 10, // بين الصوره والاسم
  String text2 = "",
    onTap
}) {
    return InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.keyboard_arrow_left),

              Row(
                children: [
                  Row(
                    children: [
                      Text(
text2,
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff1ec1ad),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 15,
                          color: const Color(0xff2370a2),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                    ],
                  ),
                  SizedBox(width: widthSizedBox,),
                  Image.asset(
                    image,
                    width: 26,
                    height: 26,
                  ),
                ],
              )
            ],
          ),
          height: 46,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 1.0, color: const Color(0xffebebeb)),
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
