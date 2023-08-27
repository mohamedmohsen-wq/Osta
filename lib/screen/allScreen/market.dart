import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/market/cupit.dart';
import 'package:osta/block/market/states.dart';
import 'package:osta/block/state.dart';
import 'package:osta/model/market/Product.dart';
import 'package:osta/model/market/market_model.dart';

class Screen32 extends StatelessWidget {
  const Screen32({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return Scaffold(
          body: Container(child: Column(children: [
            Container(
              height: 112,
              width: double.infinity,
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
                padding:
                const EdgeInsets.only(right: 23.0, top: 30, left: 23),
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
                          width: 20,
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Text(
                        'السوق',
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
            // Container(
            //   width: 167,
            //   height: 227,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //     Image(image: NetworkImage(""),width: 122,height: 92,),
            //     Text(
            //       'تكييف تورنيدو اسبليت بارد\nديچيتال ، تبريد فائق السرعة',
            //       style: TextStyle(
            //
            //         fontSize: 13,
            //         color: const Color(0xff1d1d1b),
            //         height: 1.5384615384615385,
            //       ),
            //       textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            //       textAlign: TextAlign.right,
            //       softWrap: false,
            //     ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Text(
            //             'جنيه',
            //             style: TextStyle(
            //               fontSize: 12,
            //               color: const Color(0xff1bd4be),
            //             ),
            //             textHeightBehavior:
            //             TextHeightBehavior(applyHeightToFirstAscent: false),
            //             textAlign: TextAlign.right,
            //             softWrap: false,
            //           ),
            //           SizedBox(
            //             width: 5,
            //           ),
            //           Text(
            //             '40',
            //             style: TextStyle(
            //               fontSize: 16,
            //               color: const Color(0xff1bd4be),
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textHeightBehavior:
            //             TextHeightBehavior(applyHeightToFirstAscent: false),
            //             textAlign: TextAlign.right,
            //             softWrap: false,
            //           ),
            //         ],
            //       ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           "شارب",
            //           style: TextStyle(
            //             fontSize: 11,
            //             color: const Color(0xff2d648c),
            //           ),
            //           textHeightBehavior: TextHeightBehavior(
            //               applyHeightToFirstAscent: false),
            //           textAlign: TextAlign.right,
            //           softWrap: false,
            //         ),
            //         Text(""),
            //         Container(
            //           height: 24,
            //           width: 24,
            //           decoration: BoxDecoration(
            //             gradient: LinearGradient(
            //               begin: Alignment(0.0, -1.0),
            //               end: Alignment(0.0, 1.0),
            //               colors: [
            //                 const Color(0xff29f19b),
            //                 const Color(0xff0db6e1)
            //               ],
            //               stops: [0.0, 1.0],
            //             ),
            //             borderRadius: BorderRadius.all(
            //                 Radius.elliptical(9999.0, 9999.0)),
            //           ),
            //           child:  Image.asset(
            //             "images1/shoppingg.png",
            //             width: 26,
            //             height: 28,
            //           ),
            //         ),
            //       ],
            //     ),
            //
            //   ],),
            //   decoration: BoxDecoration(
            //     color: const Color(0xffffffff),
            //     borderRadius: BorderRadius.circular(8.0),
            //     border: Border.all(width: 1.0, color: const Color(0xffebebeb)),
            //     boxShadow: [
            //       BoxShadow(
            //         color: const Color(0x0d000000),
            //         offset: Offset(0, 3),
            //         blurRadius: 20,
            //       ),
            //     ],
            //   ),
            // )
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10,right: 10,left: 10),
              height: 140,
              child: ImageSlideshow(
                initialPage: 0,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: Colors.yellow[900],
                isLoop: false,
                //autoPlayInterval: 3000,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 116,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images3/Base.png"),
                            )),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 116,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images3/Base.png"),
                            )),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 116,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images3/Base.png"),
                            )),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 116,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images3/Base.png"),
                            )),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 116,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images3/Base.png"),
                            )),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 116,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images3/Base.png"),
                            )),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 25),
              child: Text(
                'المضاف حديثا',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff2370a2),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            ConditionalBuilder(

                condition: true,
                builder: (context)=> buldgridview(context),
                fallback: (context)=>Center(child: CircularProgressIndicator())
            ),
            
          ],),),
        );
      },
    );
  }

   Widget buildContainerNewAdd(
       Product model, context

  ) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "screen38");
      },
      child: Container(
        padding: EdgeInsets.all(10),
         height: 237,
        width:167,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.favorite_border),
            Center(
                child: Image(







                    image:
                    NetworkImage("${model.image3}",

                    )),),
            Text(
              '${model.name}',
              overflow:  TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,


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
                  '${model.price}',
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "screen39");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 11, right: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "شارب",
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
                            child:  Image.asset(
                              "images1/shoppingg.png",
                              width: 26,
                              height: 28,
                            ),
                          ),
                        ],
                      ),
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
  Widget buldgridview(context,)=> GridView.count(
    padding: EdgeInsets.only(left: 10,right: 10,top: 10),
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,



    mainAxisSpacing: 10,
    crossAxisSpacing: 5,
    childAspectRatio: 1 / 1.6,
    children: List.generate(
        OstaCubit.getCubit(context).products.length,
            (index) =>buildContainerNewAdd(OstaCubit.getCubit(context).products[index],context, ))
  );
}


