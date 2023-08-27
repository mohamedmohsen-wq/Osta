import 'package:flutter/material.dart';
class Screen41 extends StatelessWidget {
  const Screen41({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: SingleChildScrollView(
        child: Column(children: [
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
              padding: const EdgeInsets.only(right: 23.0,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child:Text(
                        'عربة التسوق',
                        style: TextStyle(

                          fontSize: 18,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      )
                  ),

                  Image.asset("images1/mo1.png",),

                ],),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 85,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal:15),
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
            child: Padding(
              padding: const EdgeInsets.only(left:5.0,right: 10,top: 0),
              child: Directionality(
                textDirection:TextDirection.rtl ,
                child: Row(
                  children: [
                    Column(children: [
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 195,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.5),
                                child: Image.asset("images1/location.png",width: 28,height: 28,),
                              ),
                              SizedBox(width: 14,),
                              Text(
                                'العنوان',
                                style: TextStyle(

                                  fontSize: 15,
                                  color: const Color(0xff2370a2),
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                              )


                            ],),
                            Text(""),

                            Text("")

                          ],),
                      ),
                      Container(

                        margin: EdgeInsetsDirectional.only(end: 165,),
                        child: Column(


                          children: [
                            Text(
                              'المنزل',
                              style: TextStyle(

                                fontSize: 13,
                                color: const Color(0xff1d1d1b),
                              ),
                              softWrap: false,
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 80),
                        child: Text(
                          'ش 7 بجوار المترو , المعادي',
                          style: TextStyle(

                            fontSize: 12,
                            color: const Color(0xff9c9c9c),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],),
                    Container(
                      margin: EdgeInsetsDirectional.only(start: 40),



                        child: Image.asset("images1/add.png",width: 27,height: 27,)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(height: 1.5,margin: EdgeInsets.symmetric(horizontal: 10),color: Color(0xFFEBEBEB),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'طريقة الدفع',
                  style: TextStyle(

                    fontSize: 15,
                    color: const Color(0xff2370a2),

                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  softWrap: false,
                ),
                SizedBox(width: 4,),
                Image.asset("images1/card.png",width: 27,height: 27,),
              ],),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
            children: [
            Container(
              height: 48,
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
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(value: 1, groupValue: 1, onChanged: (ca){}),
                  Row(children: [
                    Text(
                      'كاش',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 9,),
                    Image.asset("images1/cash.png",width: 21.34,height: 16,),

                  ],),



                ],),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 48,
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
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(value: 1, groupValue: 1, onChanged: (ca){}),
                    Row(children: [
                      Text(
                        'اونلاين',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1d1d1b),
                        ),
                        softWrap: false,
                      ),
                      SizedBox(width: 9,),
                      Image.asset("images1/onlin1.png",width: 21.34,height: 16,),

                    ],),



                  ],),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 48,
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
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(value: 1, groupValue: 1, onChanged: (ca){}),
                    Row(children: [
                      Text(
                        'محافظ الكترونية',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1d1d1b),
                        ),
                        softWrap: false,
                      ),
                      SizedBox(width: 9,),
                      Image.asset("images1/mobile.png",width: 21.34,height: 16,),

                    ],),



                  ],),
              ),
            ),
            SizedBox(height: 30,),

          ],),),
          Container(
            width: double.infinity,
            height: 256,
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
            child: Column(

              children: [
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0,left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [

                        Text(
                          'جنيه',
                          style: TextStyle(

                            fontSize: 15,
                            color: const Color(0xff1d1d1b),

                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '5.250',
                          style: TextStyle(

                            fontSize: 15,
                            color: const Color(0xff1d1d1b),

                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        )
                      ],),
                      Text(""),
                      Text(
                        'قيمة الطلب',
                        style: TextStyle(

                          fontSize: 15,
                          color: const Color(0xff1d1d1b),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),


                    ],),
                ),
                SizedBox(height: 6,),
                Container(height: 1.5,margin: EdgeInsets.symmetric(horizontal: 10),color: Color(0xFFEBEBEB),),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0,left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [

                        Text(
                          'جنيه',
                          style: TextStyle(

                            fontSize: 15,
                            color: const Color(0xff1d1d1b),

                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '5',
                          style: TextStyle(

                            fontSize: 15,
                            color: const Color(0xff1d1d1b),

                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        )
                      ],),
                      Text(""),
                      Text(
                        'الضريبة',
                        style: TextStyle(

                          fontSize: 15,
                          color: const Color(0xff1d1d1b),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),


                    ],),
                ),
                SizedBox(height: 6,),
                Container(height: 1.5,margin: EdgeInsets.symmetric(horizontal: 10),color: Color(0xFFEBEBEB),),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0,left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [

                        Text(
                          'جنيه',
                          style: TextStyle(

                            fontSize: 15,
                            color: const Color(0xff1d1d1b),

                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '50-',
                          style: TextStyle(

                            fontSize: 15,
                            color: const Color(0xff1d1d1b),

                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        )
                      ],),
                      Text(""),
                      Text(
                        'الخصم',
                        style: TextStyle(

                          fontSize: 15,
                          color: const Color(0xff1d1d1b),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),


                    ],),
                ),
                SizedBox(height: 6,),

                Container(height: 1.5,margin: EdgeInsets.symmetric(horizontal: 10),color: Color(0xFFEBEBEB),),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0,left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [

                        Text(
                          'جنيه',
                          style: TextStyle(
                            fontFamily: 'Vazirmatn',
                            fontSize: 15,
                            color: const Color(0xff1ec1ad),
                            height: 1.4,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '5.205',
                          style: TextStyle(
                            fontFamily: 'Vazirmatn',
                            fontSize: 15,
                            color: const Color(0xff1ec1ad),
                            height: 1.4,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        )
                      ],),
                      Text(""),
                      Text(
                        'الإجمالي',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 15,
                          color: const Color(0xff1ec1ad),
                          height: 1.4,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      )


                    ],),
                ),
                SizedBox(height: 10,),
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
                              child:Center(
                                child: Text(
                                  'تأكيد الطلب',
                                  style: TextStyle(

                                    fontSize: 17,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  softWrap: false,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(height: 5,width: 134,color: Color(0xFFB7BDC8),)
                  ],),
                ),


              ],),
          ),

        ],),
      ),),
    );
  }
}
