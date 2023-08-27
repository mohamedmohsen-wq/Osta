import 'package:flutter/material.dart';
class Screen39 extends StatelessWidget {
  const Screen39({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height:253,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
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
            child: Column(
              children: [
                SizedBox(height: 40,),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "screen40");
                        },
                        child: Image.asset("images3/Group 37921.png",width: 33.49,height: 31.01,)),
                    SizedBox(width: 8,),


                  ],),
                  Text(""),
                  InkWell(

                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset("images1/mo1.png",)),
                ],),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images1/sharp8.png",width: 120,height: 120,),
                    Text(
                      'شارب',
                      style: TextStyle(

                        fontSize: 19,
                        color: const Color(0xffffffff),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ) ,
                    Text(
                      'عدد المنتجات : 165',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xffffffff),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              )
            ],),
          ),
          SizedBox(height: 10,),
          Container(child: Column(children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(children: [
                    Expanded(
                      child: Container(
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
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 10,top: 8),

                              child: Image.asset("images1/alp2.png",width: 28.38,height: 28.38,)),
                          Image.asset("images1/Mask .png",width: 122,height: 72,),
                          SizedBox(height: 6,),
                          Container(
                            child: Text(
                              'تكييف تورنيدو اسبليت بارد\nديچيتال ، تبريد فائق السرعة',
                              style: TextStyle(

                                fontSize: 13,
                                color: const Color(0xff1d1d1b),

                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 12,
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

                                    fontSize: 16,
                                    color: const Color(0xff1bd4be),
                                    fontWeight: FontWeight.w500,

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                              ],),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [



                                Image.asset("images1/shoppingg.png",width: 26,height: 28,),
                                Text(""),
                                Container(

                                  height: 26,
                                  width: 76,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffdff2ff),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 11,right: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                        Text(""),
                                        Container(
                                          height: 24,
                                          width: 24,

                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.0, -1.0),
                                              end: Alignment(0.0, 1.0),
                                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                              stops: [0.0, 1.0],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                                          ),
                                          child:  Image.asset("images1/sharp1.png",),
                                        ),

                                      ],),
                                  ),
                                ),
                              ],),
                          )

                        ],),
                      ),
                    ),

                    SizedBox(width: 5,),
                    Expanded(
                      child: Container(
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
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 10,top: 8),

                              child: Image.asset("images1/alp2.png",width: 28.38,height: 28.38,)),
                          Image.asset("images1/Mask .png",width: 122,height: 72,),
                          SizedBox(height: 6,),
                          Container(
                            child: Text(
                              'تكييف تورنيدو اسبليت بارد\nديچيتال ، تبريد فائق السرعة',
                              style: TextStyle(

                                fontSize: 13,
                                color: const Color(0xff1d1d1b),

                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 12,
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

                                    fontSize: 16,
                                    color: const Color(0xff1bd4be),
                                    fontWeight: FontWeight.w500,

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                              ],),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [



                                Image.asset("images1/shoppingg.png",width: 26,height: 28,),
                                Text(""),
                                Container(

                                  height: 26,
                                  width: 76,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffdff2ff),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 11,right: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                        Text(""),
                                        Container(
                                          height: 24,
                                          width: 24,

                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.0, -1.0),
                                              end: Alignment(0.0, 1.0),
                                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                              stops: [0.0, 1.0],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                                          ),
                                          child:  Image.asset("images1/sharp1.png",),
                                        ),

                                      ],),
                                  ),
                                ),
                              ],),
                          )

                        ],),
                      ),
                    ),
                  ],),
                  SizedBox(height: 5,),
                  Row(children: [
                    Expanded(
                      child: Container(
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
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 10,top: 8),

                              child: Image.asset("images1/alp2.png",width: 28.38,height: 28.38,)),
                          Image.asset("images1/Mask .png",width: 122,height: 72,),
                          SizedBox(height: 6,),
                          Container(
                            child: Text(
                              'تكييف تورنيدو اسبليت بارد\nديچيتال ، تبريد فائق السرعة',
                              style: TextStyle(

                                fontSize: 13,
                                color: const Color(0xff1d1d1b),

                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 12,
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

                                    fontSize: 16,
                                    color: const Color(0xff1bd4be),
                                    fontWeight: FontWeight.w500,

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                              ],),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [



                                Image.asset("images1/shoppingg.png",width: 26,height: 28,),
                                Text(""),
                                Container(

                                  height: 26,
                                  width: 76,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffdff2ff),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 11,right: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                        Text(""),
                                        Container(
                                          height: 24,
                                          width: 24,

                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.0, -1.0),
                                              end: Alignment(0.0, 1.0),
                                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                              stops: [0.0, 1.0],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                                          ),
                                          child:  Image.asset("images1/sharp1.png",),
                                        ),

                                      ],),
                                  ),
                                ),
                              ],),
                          )

                        ],),
                      ),
                    ),

                    SizedBox(width: 5,),
                    Expanded(
                      child: Container(
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
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 10,top: 8),

                              child: Image.asset("images1/alp2.png",width: 28.38,height: 28.38,)),
                          Image.asset("images1/Mask .png",width: 122,height: 72,),
                          SizedBox(height: 6,),
                          Container(
                            child: Text(
                              'تكييف تورنيدو اسبليت بارد\nديچيتال ، تبريد فائق السرعة',
                              style: TextStyle(

                                fontSize: 13,
                                color: const Color(0xff1d1d1b),

                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 12,
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

                                    fontSize: 16,
                                    color: const Color(0xff1bd4be),
                                    fontWeight: FontWeight.w500,

                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                              ],),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [



                                Image.asset("images1/shoppingg.png",width: 26,height: 28,),
                                Text(""),
                                Container(

                                  height: 26,
                                  width: 76,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffdff2ff),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 11,right: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                        Text(""),
                                        Container(
                                          height: 24,
                                          width: 24,

                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.0, -1.0),
                                              end: Alignment(0.0, 1.0),
                                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                              stops: [0.0, 1.0],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                                          ),
                                          child:  Image.asset("images1/sharp1.png",),
                                        ),

                                      ],),
                                  ),
                                ),
                              ],),
                          )

                        ],),
                      ),
                    ),
                  ],),

                  SizedBox(height: 5,),


                ],)
            ),

          ],),)
        ],),
      ),) ,
    );
  }
}
