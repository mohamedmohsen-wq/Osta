import 'package:flutter/material.dart';
class Screen17 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 105,
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
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'كل العروض',
                      style: TextStyle(

                        fontSize: 16,
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
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(

              children: [

            Row(children: [
              Expanded(
                child: Column(
                  children: [


                    Container(
                      height: 7,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-0.419, 0.0),
                          end: Alignment(0.942, 0.0),
                          colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                          stops: [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                    Container(

                      height: 218,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8.0),
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
                          margin: EdgeInsetsDirectional.only(end: 130,top:7),
                          width: 40,
                          height: 17,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(width: 1.3, color: const Color(0xff1ec1ad)),
                          ),
                          child: Center(
                            child: Text(
                              '10:00',
                              style: TextStyle(

                                fontSize: 9,
                                color: const Color(0xff1ec1ad),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                        Image.asset("images1/person.png",width: 54,height: 53,),
                        SizedBox(height: 5,),
                        Text(
                          'مصطفي ابراهيم',
                          style: TextStyle(

                            fontSize: 12,
                            color: const Color(0xff1d1d1b),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                        SizedBox(height: 5,),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '(165)',
                                style: TextStyle(

                                  fontSize: 10,
                                  color: const Color(0xff9c9c9c),
                                ),
                                softWrap: false,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontFamily: 'Vazirmatn',
                                  fontSize: 11,
                                  color: const Color(0xff2370a2),
                                ),
                                softWrap: false,
                              ),
                              SizedBox(width: 3,),

                              Image.asset("images1/star.png",width: 14.49,height: 13.82,),

                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 101,
                          height: 21,
                          decoration: BoxDecoration(
                            color: const Color(0x1cfe0500),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image.asset("images1/map.png",width: 10.82,height: 14.36,),
                              SizedBox(width: 2,),
                              Text(
                                'علي بعد 1.2 ك.م',
                                style: TextStyle(

                                  fontSize: 10,
                                  color: const Color(0xff1d1d1b),
                                ),
                                softWrap: false,
                              )
                            ],),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 126,
                          height: 23,
                          decoration: BoxDecoration(
                            color: const Color(0x211ec1ad),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SingleChildScrollView(
                                primary: false,
                                child: Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 11,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(width: 2,),
                            SingleChildScrollView(
                              primary: false,
                              child: Text(
                                '100',
                                style: TextStyle(

                                  fontSize: 13,
                                  color: const Color(0xff1ec1ad),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),


                          ],),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                          Container(

                            width: 63,
                            height: 28,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.774, -0.666),
                                end: Alignment(0.746, 0.822),
                                colors: [const Color(0xffF3997B), const Color(0xffF3997B)],
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4067d652),
                                  offset: Offset(0, 5),
                                  blurRadius: 12,
                                ),
                              ],
                            ),
                            child: Image.asset("images1/close.png",width: 15.54,height: 10.06,),
                          ),
                          SizedBox(width: 6,),
                          Container(
                            width: 63,
                            height: 28,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.774, -0.666),
                                end: Alignment(0.746, 0.822),
                                colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4067d652),
                                  offset: Offset(0, 5),
                                  blurRadius: 12,
                                ),
                              ],
                            ),
                            child: Image.asset("images1/select.png",width: 15.54,height: 10.06,),
                          ),


                        ],),
                        SizedBox(height: 5,)


                      ],),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  children: [


                    Container(
                      height: 7,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-0.419, 0.0),
                          end: Alignment(0.942, 0.0),
                          colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                          stops: [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                    Container(

                      height: 218,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8.0),
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
                          margin: EdgeInsetsDirectional.only(end: 130,top:7),
                          width: 40,
                          height: 17,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(width: 1.3, color: const Color(0xff1ec1ad)),
                          ),
                          child: Center(
                            child: Text(
                              '10:00',
                              style: TextStyle(

                                fontSize: 9,
                                color: const Color(0xff1ec1ad),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                        Image.asset("images1/person4.png",width: 54,height: 53,),
                        SizedBox(height: 5,),
                        Text(
                          'مصطفي ابراهيم',
                          style: TextStyle(

                            fontSize: 12,
                            color: const Color(0xff1d1d1b),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                        SizedBox(height: 5,),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '(165)',
                                style: TextStyle(

                                  fontSize: 10,
                                  color: const Color(0xff9c9c9c),
                                ),
                                softWrap: false,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontFamily: 'Vazirmatn',
                                  fontSize: 11,
                                  color: const Color(0xff2370a2),
                                ),
                                softWrap: false,
                              ),
                              SizedBox(width: 3,),

                              Image.asset("images1/star.png",width: 14.49,height: 13.82,),

                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 101,
                          height: 21,
                          decoration: BoxDecoration(
                            color: const Color(0x1cfe0500),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images1/map.png",width: 10.82,height: 14.36,),
                                SizedBox(width: 2,),
                                Text(
                                  'علي بعد 1.2 ك.م',
                                  style: TextStyle(

                                    fontSize: 10,
                                    color: const Color(0xff1d1d1b),
                                  ),
                                  softWrap: false,
                                )
                              ],),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 126,
                          height: 23,
                          decoration: BoxDecoration(
                            color: const Color(0x211ec1ad),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SingleChildScrollView(
                                primary: false,
                                child: Text(
                                  'جنيه',
                                  style: TextStyle(

                                    fontSize: 11,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(width: 2,),
                              SingleChildScrollView(
                                primary: false,
                                child: Text(
                                  '100',
                                  style: TextStyle(

                                    fontSize: 13,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),


                            ],),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Container(

                              width: 63,
                              height: 28,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.774, -0.666),
                                  end: Alignment(0.746, 0.822),
                                  colors: [const Color(0xffF3997B), const Color(0xffF3997B)],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x4067d652),
                                    offset: Offset(0, 5),
                                    blurRadius: 12,
                                  ),
                                ],
                              ),
                              child: Image.asset("images1/close.png",width: 15.54,height: 10.06,),
                            ),
                            SizedBox(width: 6,),
                            Container(
                              width: 63,
                              height: 28,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.774, -0.666),
                                  end: Alignment(0.746, 0.822),
                                  colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x4067d652),
                                    offset: Offset(0, 5),
                                    blurRadius: 12,
                                  ),
                                ],
                              ),
                              child: Image.asset("images1/select.png",width: 15.54,height: 10.06,),
                            ),


                          ],),
                        SizedBox(height: 5,)


                      ],),
                    ),
                  ],
                ),
              ),


            ],),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(
                    child: Column(
                      children: [


                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.419, 0.0),
                              end: Alignment(0.942, 0.0),
                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                        ),
                        Container(

                          height: 218,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8.0),
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
                              margin: EdgeInsetsDirectional.only(end: 130,top:7),
                              width: 40,
                              height: 17,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(width: 1.3, color: const Color(0xff1ec1ad)),
                              ),
                              child: Center(
                                child: Text(
                                  '10:00',
                                  style: TextStyle(

                                    fontSize: 9,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Image.asset("images1/person1.png",width: 54,height: 53,),
                            SizedBox(height: 5,),
                            Text(
                              'مصطفي ابراهيم',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                            SizedBox(height: 5,),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(165)',
                                    style: TextStyle(

                                      fontSize: 10,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Vazirmatn',
                                      fontSize: 11,
                                      color: const Color(0xff2370a2),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),

                                  Image.asset("images1/star.png",width: 14.49,height: 13.82,),

                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 101,
                              height: 21,
                              decoration: BoxDecoration(
                                color: const Color(0x1cfe0500),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images1/map.png",width: 10.82,height: 14.36,),
                                    SizedBox(width: 2,),
                                    Text(
                                      'علي بعد 1.2 ك.م',
                                      style: TextStyle(

                                        fontSize: 10,
                                        color: const Color(0xff1d1d1b),
                                      ),
                                      softWrap: false,
                                    )
                                  ],),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 126,
                              height: 23,
                              decoration: BoxDecoration(
                                color: const Color(0x211ec1ad),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      'جنيه',
                                      style: TextStyle(

                                        fontSize: 11,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      '100',
                                      style: TextStyle(

                                        fontSize: 13,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),


                                ],),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(

                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xffF3997B), const Color(0xffF3997B)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/close.png",width: 15.54,height: 10.06,),
                                ),
                                SizedBox(width: 6,),
                                Container(
                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/select.png",width: 15.54,height: 10.06,),
                                ),


                              ],),
                            SizedBox(height: 5,)


                          ],),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      children: [


                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.419, 0.0),
                              end: Alignment(0.942, 0.0),
                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                        ),
                        Container(

                          height: 218,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8.0),
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
                              margin: EdgeInsetsDirectional.only(end: 130,top:7),
                              width: 40,
                              height: 17,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(width: 1.3, color: const Color(0xff1ec1ad)),
                              ),
                              child: Center(
                                child: Text(
                                  '10:00',
                                  style: TextStyle(

                                    fontSize: 9,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Image.asset("images1/person2.png",width: 54,height: 53,),
                            SizedBox(height: 5,),
                            Text(
                              'مصطفي ابراهيم',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                            SizedBox(height: 5,),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(165)',
                                    style: TextStyle(

                                      fontSize: 10,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Vazirmatn',
                                      fontSize: 11,
                                      color: const Color(0xff2370a2),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),

                                  Image.asset("images1/star.png",width: 14.49,height: 13.82,),

                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 101,
                              height: 21,
                              decoration: BoxDecoration(
                                color: const Color(0x1cfe0500),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images1/map.png",width: 10.82,height: 14.36,),
                                    SizedBox(width: 2,),
                                    Text(
                                      'علي بعد 1.2 ك.م',
                                      style: TextStyle(

                                        fontSize: 10,
                                        color: const Color(0xff1d1d1b),
                                      ),
                                      softWrap: false,
                                    )
                                  ],),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 126,
                              height: 23,
                              decoration: BoxDecoration(
                                color: const Color(0x211ec1ad),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      'جنيه',
                                      style: TextStyle(

                                        fontSize: 11,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      '100',
                                      style: TextStyle(

                                        fontSize: 13,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),


                                ],),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(

                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xffF3997B), const Color(0xffF3997B)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/close.png",width: 15.54,height: 10.06,),
                                ),
                                SizedBox(width: 6,),
                                Container(
                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/select.png",width: 15.54,height: 10.06,),
                                ),


                              ],),
                            SizedBox(height: 5,)


                          ],),
                        ),
                      ],
                    ),
                  ),


                ],),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(
                    child: Column(
                      children: [


                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.419, 0.0),
                              end: Alignment(0.942, 0.0),
                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                        ),
                        Container(

                          height: 218,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8.0),
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
                              margin: EdgeInsetsDirectional.only(end: 130,top:7),
                              width: 40,
                              height: 17,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(width: 1.3, color: const Color(0xff1ec1ad)),
                              ),
                              child: Center(
                                child: Text(
                                  '10:00',
                                  style: TextStyle(

                                    fontSize: 9,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Image.asset("images1/person3.png",width: 54,height: 53,),
                            SizedBox(height: 5,),
                            Text(
                              'مصطفي ابراهيم',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                            SizedBox(height: 5,),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(165)',
                                    style: TextStyle(

                                      fontSize: 10,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Vazirmatn',
                                      fontSize: 11,
                                      color: const Color(0xff2370a2),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),

                                  Image.asset("images1/star.png",width: 14.49,height: 13.82,),

                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 101,
                              height: 21,
                              decoration: BoxDecoration(
                                color: const Color(0x1cfe0500),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images1/map.png",width: 10.82,height: 14.36,),
                                    SizedBox(width: 2,),
                                    Text(
                                      'علي بعد 1.2 ك.م',
                                      style: TextStyle(

                                        fontSize: 10,
                                        color: const Color(0xff1d1d1b),
                                      ),
                                      softWrap: false,
                                    )
                                  ],),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 126,
                              height: 23,
                              decoration: BoxDecoration(
                                color: const Color(0x211ec1ad),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      'جنيه',
                                      style: TextStyle(

                                        fontSize: 11,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      '100',
                                      style: TextStyle(

                                        fontSize: 13,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),


                                ],),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(

                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xffF3997B), const Color(0xffF3997B)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/close.png",width: 15.54,height: 10.06,),
                                ),
                                SizedBox(width: 6,),
                                Container(
                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/select.png",width: 15.54,height: 10.06,),
                                ),


                              ],),
                            SizedBox(height: 5,)


                          ],),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      children: [


                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.419, 0.0),
                              end: Alignment(0.942, 0.0),
                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                        ),
                        Container(

                          height: 218,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8.0),
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
                              margin: EdgeInsetsDirectional.only(end: 130,top:7),
                              width: 40,
                              height: 17,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(width: 1.3, color: const Color(0xff1ec1ad)),
                              ),
                              child: Center(
                                child: Text(
                                  '10:00',
                                  style: TextStyle(

                                    fontSize: 9,
                                    color: const Color(0xff1ec1ad),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Image.asset("images1/person5.png",width: 54,height: 53,),
                            SizedBox(height: 5,),
                            Text(
                              'مصطفي ابراهيم',
                              style: TextStyle(

                                fontSize: 12,
                                color: const Color(0xff1d1d1b),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: false,
                            ),
                            SizedBox(height: 5,),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(165)',
                                    style: TextStyle(

                                      fontSize: 10,
                                      color: const Color(0xff9c9c9c),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Vazirmatn',
                                      fontSize: 11,
                                      color: const Color(0xff2370a2),
                                    ),
                                    softWrap: false,
                                  ),
                                  SizedBox(width: 3,),

                                  Image.asset("images1/star.png",width: 14.49,height: 13.82,),

                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 101,
                              height: 21,
                              decoration: BoxDecoration(
                                color: const Color(0x1cfe0500),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images1/map.png",width: 10.82,height: 14.36,),
                                    SizedBox(width: 2,),
                                    Text(
                                      'علي بعد 1.2 ك.م',
                                      style: TextStyle(

                                        fontSize: 10,
                                        color: const Color(0xff1d1d1b),
                                      ),
                                      softWrap: false,
                                    )
                                  ],),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: 126,
                              height: 23,
                              decoration: BoxDecoration(
                                color: const Color(0x211ec1ad),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      'جنيه',
                                      style: TextStyle(

                                        fontSize: 11,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Text(
                                      '100',
                                      style: TextStyle(

                                        fontSize: 13,
                                        color: const Color(0xff1ec1ad),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),


                                ],),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(

                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xffF3997B), const Color(0xffF3997B)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/close.png",width: 15.54,height: 10.06,),
                                ),
                                SizedBox(width: 6,),
                                Container(
                                  width: 63,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.774, -0.666),
                                      end: Alignment(0.746, 0.822),
                                      colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x4067d652),
                                        offset: Offset(0, 5),
                                        blurRadius: 12,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("images1/select.png",width: 15.54,height: 10.06,),
                                ),


                              ],),
                            SizedBox(height: 5,)


                          ],),
                        ),
                      ],
                    ),
                  ),


                ],)
          ],),)
        ],),
      ),),
    );
  }
}




