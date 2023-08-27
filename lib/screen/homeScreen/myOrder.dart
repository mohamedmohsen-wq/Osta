import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/model/Order/order.dart';
import 'package:osta/shered/componnents/componnents.dart';


class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit, OstaState>(

        builder: (context, state) {
          OstaCubit cubit = BlocProvider.of(context);
          return cubit.x == true
              ? buildColumnSouq(cubit, context)
              : buildColumnServiceOrder(cubit, context);
        },
        listener: (context, state) {});
  }

  Widget buildColumnSouq(OstaCubit cubit, BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(

        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 40),
            height: 154,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
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
                      width: 68,
                      height: 30,
                    ),
                    buildInkWellNotification(context)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 36,
                      width: 129,
                      child: Center(
                        child: Text(
                          'طلبات السوق',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xffffffff),
                          ),
                          softWrap: false,
                        ),
                      ),
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
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        cubit.changeX();
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'طلبات الخدمات',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        height: 36,
                        width: 129,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
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
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 26,
                    color: Colors.grey,
                    width: 1,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      cubit.changeIndexMyOrderScreen(2);
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'المنتهية',
                        style: TextStyle(
                          fontSize: 14,
                          color: cubit.indexMyOrderScreen == 2
                              ? cubit.colorText1
                              : cubit.colorText2,
                        ),
                      )),
                    ),
                  )),
                  Container(
                    height: 26,
                    color: Colors.grey,
                    width: 1,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      cubit.changeIndexMyOrderScreen(1);
                    },
                    child: Container(
                      width: 10,
                      child: Center(
                          child: Text(
                        'الحالية',
                        style: TextStyle(
                          fontSize: 14,
                          color: cubit.indexMyOrderScreen == 1
                              ? cubit.colorText1
                              : cubit.colorText2,
                        ),
                      )),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                color: Color(0xffE2E2E2),
                width: double.infinity,
                height: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 2,
                      width: 50,
                      color: cubit.indexMyOrderScreen == 2
                          ? cubit.colorContainer1
                          : cubit.colorContainer2,
                    ),
                    Container(
                      height: 2,
                      width: 50,
                      color: cubit.indexMyOrderScreen == 1
                          ? cubit.colorContainer1
                          : cubit.colorContainer2,
                    ),
                  ],
                ),
              )
            ],
          ),
          cubit.indexMyOrderScreen == 1
              ? InkWell(
              onTap: (){
                Navigator.popAndPushNamed(context, "screen45");
                          },
              child: Image.asset("images3/naw2.png"))
              : cubit.indexMyOrderScreen == 2
                  ? Image.asset("images3/done2.png")
                  : Image.asset("images3/cancle.png")
        ],
      ),
    );
  }

  Widget buildColumnServiceOrder(OstaCubit cubit, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 40),
            height: 154,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
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
                      width: 68,
                      height: 30,
                    ),
                    buildInkWellNotification(context),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        cubit.changeX();
                      },
                      child: Container(
                        width: 129,
                        height: 36,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0xffF3F3F3).withOpacity(0.2),
                              const Color(0xffF3F3F3).withOpacity(0.2)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                            child: Text(
                          'طلبات السوق',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xffffffff),
                          ),
                          softWrap: false,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 129,
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
                      child: Center(
                        child: Text(
                          'طلبات الخدمات',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xffffffff),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
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
            height: 15,
          ),
          grdr(context),


          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
Widget grdr(
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
    OstaCubit.getCubit(context).OrdersApp.length
  , (index) => conterr(OstaCubit.getCubit(context).OrdersApp[index], context))

  ,);
Widget conterr( order? model,context,)=>  Container(

    child: Column(

      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8.0),
              border:
              Border.all(width: 1.0, color: const Color(0xffebebeb)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0d000000),
                  offset: Offset(0, 3),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0x2b1bd4be),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x0d000000),
                          offset: Offset(0, 3),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              '${OstaCubit.getCubit(context,).datatime}',
                              style: TextStyle(
                                fontFamily: 'Vazirmatn',
                                fontSize: 8,
                                color: const Color(0xff9c9c9c),
                                height: 1.9090909090909092,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8,right: 8,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Row(

                              children: [
                                Text(
                                  'رقم الطلب :',
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
                                  '1',
                                  style: TextStyle(

                                    fontSize: 12,
                                    color: const Color(0xff1d1d1b),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Text(
                              'وصف الطلب',
                              style: TextStyle(

                                fontSize: 14,
                                color: const Color(0xff2370a2),
                                height: 1.5,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                            SizedBox(height: 5,),
                            Text(
                              '${model!.details}',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),

                          ],
                        ),

                      ],
                    ),
                  )


                ],
              ),
            ),
          ),
        ),

      ],)

);

/*
 decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
 */
