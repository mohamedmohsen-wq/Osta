import 'package:flutter/material.dart';
class Screen29 extends StatelessWidget {
  const Screen29({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: SingleChildScrollView(
        child:
        buildColumnServiceOrder(),
      ),),
    );
  }

  Widget buildColumnServiceOrder() {
    return Column(children: [

        Container(
          width: double.infinity,
          height: 164,
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0,left: 12,top:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images1/Lock.png",width: 33.49,height: 31.01,),

                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("images1/osta.png",width: 68.1,height: 28.44,),
                ),
                  Image.asset("images1/notifications.png",width: 28.47,height: 26.34,),


              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top:13.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  width: 129,
                  height: 36,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [const Color(0xffF3F3F3).withOpacity(0.2), const Color(0xffF3F3F3).withOpacity(0.2)],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child:
                  Center(
                      child: Text(
                        'طلبات المتجر',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color(0xffffffff),
                        ),
                        softWrap: false,
                      )
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 129,
                  height: 36,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xfffecc00)
                        , const Color(0xfff8ae00)
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


              ],),
            )
          ],),
        ),
        SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
          Container(
            height: 218,
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
                width: double.infinity,


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
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    Text(
                      '23/05/2022',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 11,
                        color: const Color(0xff9c9c9c),
                        height: 1.9090909090909092,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                      Row(
                        children: [
                          Text(
                            'تم التأكيد',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xff1ec1ad),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                          SizedBox(width:4,),
                          Image.asset("images1/select1.png",width: 18.23,height: 18.23,),

                        ],
                      ),

                  ],),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,top: 10),
                  child: Row(children: [
                    Image.asset("images1/person.png",width: 41,height: 41,),
                    SizedBox(width: 5,),
                    Column(children: [
                      Text(
                        'مصطفي ابراهيم',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff1d1d1b),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Row(

                          children: [



                          Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                          SizedBox(width:4,),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: 'Vazirmatn',
                              fontSize: 12,
                              color: const Color(0xff2370a2),
                            ),
                            softWrap: false,
                          ),

                        ],),
                      )
                    ],)
                  ],),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 9.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text(
                      'رقم الطلب : 584745',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'وصف المشكلة',
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
                      'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff9c9c9c),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'الإجمالي : 225 جنيه',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1ec1ad),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                  ],),
                ),
              )
            ],),
          ),
          SizedBox(height: 15,),
          Container(
            height: 218,
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
                width: double.infinity,


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
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        '23/05/2022',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 11,
                          color: const Color(0xff9c9c9c),
                          height: 1.9090909090909092,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      Row(
                        children: [
                          Text(
                            'في الطريق',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xff1ec1ad),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                          SizedBox(width:4,),
                          Image.asset("images1/select1.png",width: 18.23,height: 18.23,),

                        ],
                      ),

                    ],),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,top: 10),
                  child: Row(children: [
                    Image.asset("images1/person.png",width: 41,height: 41,),
                    SizedBox(width: 5,),
                    Column(children: [
                      Text(
                        'مصطفي ابراهيم',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff1d1d1b),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Row(

                          children: [



                            Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                            SizedBox(width:4,),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'Vazirmatn',
                                fontSize: 12,
                                color: const Color(0xff2370a2),
                              ),
                              softWrap: false,
                            ),

                          ],),
                      )
                    ],)
                  ],),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 9.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'رقم الطلب : 584745',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1d1d1b),
                          height: 1.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'وصف المشكلة',
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
                        'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff9c9c9c),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'الإجمالي : 225 جنيه',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1ec1ad),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),

                    ],),
                ),
              )
            ],),
          ),
          SizedBox(height: 15,),
          Container(
            height: 218,
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
                width: double.infinity,


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
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        '23/05/2022',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 11,
                          color: const Color(0xff9c9c9c),
                          height: 1.9090909090909092,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      Row(
                        children: [
                          Text(
                            'تم الانتهاء',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xff1ec1ad),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                          SizedBox(width:4,),
                          Image.asset("images1/select1.png",width: 18.23,height: 18.23,),

                        ],
                      ),

                    ],),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,top: 10),
                  child: Row(children: [
                    Image.asset("images1/person.png",width: 41,height: 41,),
                    SizedBox(width: 5,),
                    Column(children: [
                      Text(
                        'مصطفي ابراهيم',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff1d1d1b),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Row(

                          children: [



                            Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                            SizedBox(width:4,),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'Vazirmatn',
                                fontSize: 12,
                                color: const Color(0xff2370a2),
                              ),
                              softWrap: false,
                            ),

                          ],),
                      )
                    ],)
                  ],),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 9.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'رقم الطلب : 584745',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1d1d1b),
                          height: 1.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'وصف المشكلة',
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
                        'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff9c9c9c),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("images1/contener.png",width: 33,height: 33,),

                            Text(""),
                            Text(
                              'الإجمالي : 225 جنيه',
                              style: TextStyle(

                                fontSize: 14,
                                color: const Color(0xff1ec1ad),

                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: 5,),

                    ],),
                ),
              )
            ],),
          ),
          SizedBox(height: 15,),
          Container(
            height: 218,
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
                width: double.infinity,

                decoration: BoxDecoration(
                  color: const Color(0x2bff8b88),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x02000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child:Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        '23/05/2022',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 11,
                          color: const Color(0xff9c9c9c),
                          height: 1.9090909090909092,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      Row(
                        children: [
                          Text(
                            'تم الإلغاء',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xfffe0500),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                          SizedBox(width:4,),
                          Container(
                            width: 19,
                            height: 19,

                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [
                                  const Color(0xfff3997b),
                                  const Color(0xfff08165),
                                  const Color(0xffd92f26)
                                ],
                                stops: [0.0, 0.14, 1.0],
                              ),
                              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                            ),
                            child: Image.asset("images1/close.png",width: 8.81,height: 8.78,),
                          )

                        ],
                      ),

                    ],),
                ),

              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,top: 10),
                  child: Row(children: [
                    Image.asset("images1/person.png",width: 41,height: 41,),
                    SizedBox(width: 5,),
                    Column(children: [
                      Text(
                        'مصطفي ابراهيم',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff1d1d1b),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Row(

                          children: [



                            Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                            SizedBox(width:4,),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'Vazirmatn',
                                fontSize: 12,
                                color: const Color(0xff2370a2),
                              ),
                              softWrap: false,
                            ),

                          ],),
                      )
                    ],)
                  ],),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 9.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'رقم الطلب : 584745',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1d1d1b),
                          height: 1.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'وصف المشكلة',
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
                        'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff9c9c9c),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("images1/contener.png",width: 33,height: 33,),

                            Text(""),
                            Text(
                              'الإجمالي : 225 جنيه',
                              style: TextStyle(

                                fontSize: 14,
                                color: const Color(0xff1ec1ad),

                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                              softWrap: false,
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: 5,),

                    ],),
                ),
              )
            ],),
          ),
          SizedBox(height: 15,),
          Container(
            height: 218,
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
                width: double.infinity,


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
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        '23/05/2022',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 11,
                          color: const Color(0xff9c9c9c),
                          height: 1.9090909090909092,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      Row(
                        children: [
                          Text(
                            'طلب مجدول',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xff1ec1ad),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                          SizedBox(width:4,),
                          Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                            ),
                            child: Image.asset("images1/date-solid.png",),
                          )

                        ],
                      ),

                    ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 9.0,top: 10),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text(
                      'التاريخ والوقت',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 13,
                        color: const Color(0xff2d648c),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    )
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 19.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '13/05/2022 - 3:00 PM',
                        style: TextStyle(
                          fontFamily: 'Vazirmatn',
                          fontSize: 16,
                          color: const Color(0xfff8ae00),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      )
                    ],),
                ),
              ),

              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 9.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'رقم الطلب : 584745',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1d1d1b),
                          height: 1.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'وصف المشكلة',
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
                        'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff9c9c9c),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'الإجمالي : 225 جنيه',
                        style: TextStyle(

                          fontSize: 14,
                          color: const Color(0xff1ec1ad),

                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 5,),

                    ],),
                ),
              )
            ],),
          ),
          SizedBox(height: 15,),
        ],),)
      ],);
  }
}
