import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/wegit/componnents/componnents.dart';

class Screen35 extends StatelessWidget {
  Screen35({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OstaCubit cubit = BlocProvider.of(context);
    return BlocConsumer<OstaCubit, OstaState>(
        builder: (context, state) {
          Widget buildContainerTarteb(OstaCubit cubit, int num, String name) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 40,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      cubit.tartebChange(num);
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
                      backgroundColor: cubit.tatrteb == num
                          ? Color(0xff29F19B)
                          : Colors.white,
                      child: CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.white,
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff29F19B),
                              checkColor: Color(0xff29F19B),
                              value: cubit.tatrteb == num ? true : false,
                              onChanged: (bool? value) {
                                cubit.tartebChange(num);
                              }),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    name,
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
            );
          }

          Future<dynamic> buildShowModalBottomSheetNumber(
              BuildContext context, OstaCubit cubit) {
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
                    height: 340,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(""),
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Text(
                                  'التصفية',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: const Color(0xff2370a2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                    "images3/Group 42905.png",
                                    width: 27,
                                    height: 27,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        buildContainerTarteb(
                          cubit,
                          1,
                          "مكيف السبلت",
                        ),
                        buildContainerTarteb(
                          cubit,
                          2,
                          "مكيف مركزي",
                        ),
                        buildContainerTarteb(
                          cubit,
                          3,
                          "مكيف كاسيت",
                        ),
                        buildContainerTarteb(
                          cubit,
                          4,
                          "مكيف السبلت",
                        ),
                        buildAlignbottomNavBa2r(context, "تأكيد")
                      ],
                    ),
                  );
                });
          }

          Widget buildContainerFilter(OstaCubit cubit, int num, String name) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 40,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      cubit.filterChange(num);
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
                      backgroundColor: cubit.filter == num
                          ? Color(0xff29F19B)
                          : Colors.white,
                      child: CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.white,
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff29F19B),
                              checkColor: Color(0xff29F19B),
                              value: cubit.filter == num ? true : false,
                              onChanged: (bool? value) {
                                cubit.filterChange(num);
                              }),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    name,
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
            );
          }

          Future<dynamic> buildShowModalBottomSheetFilter(
              BuildContext context, OstaCubit cubit) {
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
                    height: 294,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(""),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text(
                                  'الترتيب',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: const Color(0xff2370a2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                    "images3/Group 42905.png",
                                    width: 27,
                                    height: 27,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        buildContainerFilter(
                          cubit,
                          1,
                          "المضاف حديثا",
                        ),
                        buildContainerFilter(
                          cubit,
                          2,
                          "من الأعلى سعر",
                        ),
                        buildContainerFilter(
                          cubit,
                          3,
                          "من الاقل سعر",
                        ),
                        buildAlignbottomNavBa2r(context, "تأكيد")
                      ],
                    ),
                  );
                });
          }

          return Scaffold(
            body: Container(
              child: SingleChildScrollView(
                child: Column(
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
                        padding: const EdgeInsets.only(
                            right: 23.0, top: 30, left: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, "screen40");
                                    },
                                    child: Image.asset(
                                      "images3/Group 37921.png",
                                      width: 33.49,
                                      height: 31.01,
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                'تكييفات',
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
                                child: Image.asset(
                                  "images1/mo1.png",
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height*(53/811),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(21.0),
                        border: Border.all(
                            width: 1.3, color: const Color(0xffececec)),
                      ),
                      child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                    hintText: "ابحث عن منتج, اسم تاجر",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                      color: Color(0xFFB4B4B4)),
                                  suffixIcon: Icon(Icons.search,
                                      color: Color(0xFF29F19B))),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                buildShowModalBottomSheetFilter(context, cubit);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'الترتيب',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: const Color(0xff1d1d1b),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "images1/Group 38602.png",
                                    width: 13.84,
                                    height: 16.15,
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              "images1/Line.png",
                              height: 28,
                            ),
                            InkWell(
                              onTap: () {
                                buildShowModalBottomSheetNumber(context, cubit);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'التصفية',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: const Color(0xff1d1d1b),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    "images1/Icon awesome-filter.png",
                                    width: 16.48,
                                    height: 16.48,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(
                          "images1/Line 864.png",
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: buildContainerNewAdd(
                                image: "images1/Mask1.png",
                                imageButton: "images1/Group 42868.png",
                                width: 150,
                                height: 70,
                                textButton: "اسطي",
                                context: context),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: buildContainerNewAdd(
                                image: "images1/Mask .png",
                                imageButton: "images1/shape.png",
                                width: 122,
                                height: 70,
                                textButton: "شارب",
                                context: context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: buildContainerNewAdd(
                                image: "images1/Mask1.png",
                                imageButton: "images1/Group 42868.png",
                                width: 150,
                                height: 70,
                                textButton: "اسطي",
                                context: context),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: buildContainerNewAdd(
                                image: "images1/Mask .png",
                                imageButton: "images1/shape.png",
                                width: 122,
                                height: 70,
                                textButton: "شارب",
                                context: context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: buildContainerNewAdd(
                                image: "images1/Mask1.png",
                                imageButton: "images1/Group 42868.png",
                                width: 150,
                                height: 70,
                                textButton: "اسطي",
                                context: context),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: buildContainerNewAdd(
                                image: "images1/Mask .png",
                                imageButton: "images1/shape.png",
                                width: 122,
                                height: 70,
                                textButton: "شارب",
                                context: context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }

  Widget buildContainerNewAdd({
    required String imageButton,
    required String image,
    required String textButton,
    required double width,
    required double height,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "screen38");
      },
      child: Container(
        padding: EdgeInsets.all(10),
        // height: 227,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.favorite_border),
            Center(
                child: Image.asset(
              image,
              width: width,
              height: height,
            )),
            Text(
              'تكييف تورنيدو اسبليت بارد\nديچيتال ، تبريد فائق السرعة',
              style: TextStyle(
                fontSize: 13,
                color: const Color(0xff1d1d1b),
              ),
              textAlign: TextAlign.right,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'جنيه',
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xff1bd4be),
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '5.000',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xff1bd4be),
                    fontWeight: FontWeight.w500,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images1/shoppingg.png",
                  width: 26,
                  height: 28,
                ),
                Text(""),
                Container(
                  height: 26,
                  width: 76,
                  decoration: BoxDecoration(
                    color: const Color(0xffdff2ff),
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 11, right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          textButton,
                          style: TextStyle(
                            fontSize: 11,
                            color: const Color(0xff2d648c),
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        Text(""),
                        Container(
                          height: 24,
                          width: 24,
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
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                          child: Image.asset(
                            imageButton,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
    );
  }
}
