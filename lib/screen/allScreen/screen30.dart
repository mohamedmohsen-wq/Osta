import 'package:flutter/material.dart';

class Screen30 extends StatelessWidget {
  const Screen30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: Container(
          child: Column(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(left: 26, right: 26),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              'images2/messages.png',
                              fit: BoxFit.fill,
                            ),
                            width: 37,
                            height: 37,
                          ),
                          Text(
                            'رقم الطلب : 584745',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                width: 27,
                                height: 18,
                                child: Image.asset("images2/forwardarrow.png")),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                        width: double.infinity,
                        height: 61,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                              width: 1.0, color: const Color(0xffebebeb)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x0d000000),
                              offset: Offset(0, 3),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                width: double.infinity,
                height: 129,
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
                height: 25,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 354,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 26, right: 100),
                            height: 335,
                            width: double.infinity,
                            child: Container(
                              margin: EdgeInsets.only(right: 14),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'وصف المشكلة',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0xff2370a2),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                                    style: TextStyle(
                                      fontFamily: 'Vazirmatn',
                                      fontSize: 13,
                                      color: const Color(0xff9c9c9c),
                                      height: 1.6153846153846154,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 26,
                                    ),
                                    child:
                                        Image.asset('images2/conditioners.png'),
                                    width: double.infinity,
                                    height: 56,
                                  ),
                                  Text(
                                    'العنوان',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0xff2370a2),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'المنزل',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff1d1d1b),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'ش 7 بجوار المترو , المعادي',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'طريقة الدفع',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0xff2370a2),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'كاش',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'ضمان اسطى',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0xff2370a2),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  ),
                                  Text(
                                    'ضمان لمدة 30 يوم',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.right,
                                    softWrap: false,
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffe8f8ff),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                bottomLeft: Radius.circular(12.0),
                              ),
                              border: Border.all(
                                  width: 1.3, color: const Color(0x3b2370a2)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x0d1d1d1d),
                                  offset: Offset(0, 0),
                                  blurRadius: 29,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 45,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4:30PM',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: const Color(0xff9c9c9c),
                                  ),
                                  softWrap: false,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 100, right: 26),
                            height: 144,
                            width: double.infinity,
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 14),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'جنيه\t100',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      ),
                                      Text(
                                        'السعر',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'جنيه\t20',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      ),
                                      Text(
                                        'رسوم الخدمة',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'جنيه\t5',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      ),
                                      Text(
                                        'الضريبة',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'جنيه\t125',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1ec1ad),
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      ),
                                      Text(
                                        'الإجمالي',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1ec1ad),
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.right,
                                        softWrap: false,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                bottomLeft: Radius.circular(12.0),
                              ),
                              border: Border.all(
                                  width: 1.3, color: const Color(0xffe6e6e6)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x0d1d1d1d),
                                  offset: Offset(0, 0),
                                  blurRadius: 29,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 45,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '4:30PM',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: const Color(0xff9c9c9c),
                                  ),
                                  softWrap: false,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 26, right: 26),
                            height: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(

                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 7,top:7,left: 10, right: 14,),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'مرحبا , معك مصطفي ابراهيم\nيسعدني آن أخدمك اليوم أرجو منك تأكيد الطلب',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: const Color(0xff1d1d1b),
                                          ),
                                          textHeightBehavior: TextHeightBehavior(
                                              applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.right,
                                          softWrap: false,
                                        ),
                                        Row(
                                          children: [

                                            Expanded(
                                              child: Container(
                                                child: Center(child: Text(
                                                  'إلغاء الطلب',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: const Color(0xff9c9c9c),
                                                  ),
                                                  softWrap: false,
                                                ),),
                                                decoration: BoxDecoration(
                                                  border: Border.all(width: 1.3, color: const Color(0xffe6e6e6)),
                                                  color: const Color(0xffFFFFFF),
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                              ),
                                            ),

                                            SizedBox(width: 14,),
                                            Expanded(
                                              child: Container(
                                                child: Center(child: Text(
                                                  'تأكيد الطلب',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: const Color(0xff9c9c9c),
                                                  ),
                                                  softWrap: false,
                                                ),),
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffdfdfdf),
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 114,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      bottomLeft: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                        width: 1.3,
                                        color: const Color(0xffe6e6e6)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0d1d1d1d),
                                        offset: Offset(0, 0),
                                        blurRadius: 29,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 26, right: 26),
                                  child: Text(
                                    '4:31PM',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 250,),

                                  height: 65,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Center(child: Text(
                                          'تأكيد الطلب',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: const Color(0xff2370a2),
                                          ),
                                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.right,
                                          softWrap: false,
                                        ),),
                                        decoration: BoxDecoration(
                                          color: const Color(0xffe8f8ff),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                            bottomLeft: Radius.circular(12.0),
                                          ),
                                          border: Border.all(width: 1.3, color: const Color(0x3b2370a2)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x0d1d1d1d),
                                              offset: Offset(0, 0),
                                              blurRadius: 29,
                                            ),
                                          ],
                                        ),
                                      )
,
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 45,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '4:30PM',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: const Color(0xff9c9c9c),
                                              ),
                                              softWrap: false,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container   (
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 26, right: 26),
                            height: 111,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(

                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 7,top:7,left: 10, right: 14,),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'مصطفي متوجة الآن , تتبعه على الخريطة',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: const Color(0xff1d1d1b),
                                          ),
                                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.right,
                                          softWrap: false,
                                        ),
                                        Container(
                                          child: Center(child: Text(
                                            'تتبع على الخريطة',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: const Color(0xff9a9a9a),
                                            ),
                                            softWrap: false,
                                          ),),
                                          height: 34,
                                          width: MediaQuery.of(context).size.width*.5,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffdfdfdf),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        )                                      ],
                                    ),
                                  ),
                                  height: 89,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      bottomLeft: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                        width: 1.3,
                                        color: const Color(0xffe6e6e6)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0d1d1d1d),
                                        offset: Offset(0, 0),
                                        blurRadius: 29,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 26, right: 26),
                                  child: Text(
                                    '4:31PM',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
