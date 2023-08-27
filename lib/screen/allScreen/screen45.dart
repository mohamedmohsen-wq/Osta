import 'package:flutter/material.dart';

class Screen45 extends StatelessWidget {
  const Screen45({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 112,
            child: Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Center(
                child: Row(
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
                      onTap: () {
                        Navigator.popAndPushNamed(context,"HomeScreen");

                      },
                      child: Container(
                          width: 27,
                          height: 18,
                          child: Image.asset("images2/forwardarrow.png")),
                    ),
                  ],
                ),
              ),
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
          Container(
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 96,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 5,
                          ),
                          child: Text(
                            'رقم الطلب : 32145212',
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color(0xff1c1b20),
                            ),
                            softWrap: false,
                          ),
                        ),
                        Text(
                          'عدد المتاجر : 1',
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
                          '22/02/2022 - 03:30PM',
                          style: TextStyle(
                            fontSize: 12,
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
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border:
                        Border.all(width: 1.0, color: const Color(0xffe5e5e5)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1a000000),
                        offset: Offset(0, 3),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 107,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 79,
                              height: 26,
                              child: Center(
                                child: Text(
                                  'الغاء الطلب',
                                  style: TextStyle(
                                    fontSize: 13,
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
                                    const Color(0xff3d90b4),
                                    const Color(0xff5addff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'شارب',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xff1d1d1b),
                                        ),
                                        softWrap: false,
                                      ),
                                      Text(
                                        'عدد المنتجات : 2',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: const Color(0xff9c9c9c),
                                        ),
                                        softWrap: false,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 47,
                                  height: 47,
                                  child: Image.asset('images2/sharp.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'تم التسليم',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                width: 88,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xffe6e6e6),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                            ),
                            Container(
                              color: const Color(0xffe6e6e6),
                              height: 2,
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'جاري الشحن',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                width: 88,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xffe6e6e6),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                            ),
                            Container(
                              color: const Color(0xffe6e6e6),
                              height: 2,
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'جاري الموافقة',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: const Color(0xffffffff),
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                width: 88,
                                height: 25,
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
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border:
                        Border.all(width: 1.0, color: const Color(0xffe5e5e5)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1a000000),
                        offset: Offset(0, 3),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: 20, right: 10, bottom: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'غلاية كهربائية من الستانلس\nستيل جودة جيدة',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff1c1b20),
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                              Text(
                                'x1',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xff7e7e7e),
                                  height: 1.75,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                              Text(
                                'جنيه\t5000',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff1ec1ad),
                                  height: 1.4615384615384615,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 69,
                          child: Image.asset(
                            'images2/conditioner1.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 103,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border:
                        Border.all(width: 1.0, color: const Color(0xffe5e5e5)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: 20, right: 10, bottom: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'غلاية كهربائية من الستانلس\nستيل جودة جيدة',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff1c1b20),
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                              Text(
                                'x1',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xff7e7e7e),
                                  height: 1.75,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                              Text(
                                'جنيه\t250',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff1ec1ad),
                                  height: 1.4615384615384615,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.right,
                                softWrap: false,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 53,
                          height: 53,
                          child: Image.asset(
                            'images2/poiler.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 103,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border:
                        Border.all(width: 1.0, color: const Color(0xffe5e5e5)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                'العنوان',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: const Color(0xff2370a2),
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'المنزل',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff1d1d1b),
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Text(
                                  'ش 7 بجوار المترو , المعادي',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: const Color(0xff9c9c9c),
                                  ),
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 37),
                          width: 19,
                          height: 25,
                          child: Image.asset('images2/location.png'),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  height: 85,
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'طريقة الدفع',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff2370a2),
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              softWrap: false,
                            ),
                            Text(
                              'كاش',
                              style: TextStyle(
                                fontSize: 13,
                                color: const Color(0xff1d1d1b),
                              ),
                              softWrap: false,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          width: 27,
                          height: 27,
                          child: Image.asset('images2/credit-card.png'),
                        )
                      ],
                    ),
                  ),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 67,
                  child: Container(
                    margin: EdgeInsets.only(right: 10,left: 10),

                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 86,
                            child: Center(child: Text(
                              'جنيه\t5.205',
                              style: TextStyle(
                                fontSize: 13,
                                color: const Color(0xff1ec1ad),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),),
                            decoration: BoxDecoration(
                              color: const Color(0x261ec1ad),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          Text(
                            'المبلغ الإجمالي',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff1d1d1b),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                  ),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
