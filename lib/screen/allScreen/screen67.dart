import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen67 extends StatelessWidget {
  const Screen67({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(
                      top: 25,
                      bottom: 10,
                      left: 26, right: 26),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                width: 27,
                                height: 18,
                                child: Image.asset("images2/forwardarrow.png")),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),

                      Container(
                        width: 107,
                        height: 47,
                        child: Image.asset('images2/ostalogo1.png'),
                      ),

                      SizedBox(height: 30,),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                height: 36,
                                child: Center(
                                  child: Text(
                                    'سجل كتاجر',
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                width: double.infinity,
                height: 229,
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
              Container(
                width: double.infinity,
                child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         SizedBox(height: 9,),
                        Text(
                          'برجاء ارفاق المستندات المطلوبة',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff1d1d1b),
                            fontWeight: FontWeight.w500,
                            height: 1.6666666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(height: 10,),

                        Container(width: double.infinity,
                          child: Row(

                            children: [
                              Expanded(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images2/cameracontainer.png',fit: BoxFit.fill,),
                                      height: 63,
                                      decoration: BoxDecoration(
                                        color: const Color(0x141ec1ad),
                                        borderRadius: BorderRadius.circular(9.0),
                                        border: Border.all(width: 0.3, color: const Color(0xff1ec1ad)),
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      'بطاقة الهوية',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff2370a2),
                                        height: 1.6153846153846154,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 7,),
                              Expanded(
                                child: Container(
                                  width: double.infinity,

                                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Image.asset('images2/cameracontainer.png',fit: BoxFit.fill,),
                                        height: 63,
                                        decoration: BoxDecoration(
                                          color: const Color(0x141ec1ad),
                                          borderRadius: BorderRadius.circular(9.0),
                                          border: Border.all(width: 0.3, color: const Color(0xff1ec1ad)),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'صورة شخصية',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: const Color(0xff2370a2),
                                          height: 1.6153846153846154,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                        softWrap: false,
                                      )

                                    ],
                                  ),
                                ),
                              ),

                            ],),
                        ),
                        SizedBox(height: 10,),
                        Container(width: double.infinity,
                          child: Row(

                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Image.asset('images2/cameracontainer.png',fit: BoxFit.fill,),
                                        height: 63,
                                        decoration: BoxDecoration(
                                          color: const Color(0x141ec1ad),
                                          borderRadius: BorderRadius.circular(9.0),
                                          border: Border.all(width: 0.3, color: const Color(0xff1ec1ad)),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'البطاقة من الخلف',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: const Color(0xff2370a2),
                                          height: 1.6153846153846154,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                        softWrap: false,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 7,),


                            ],),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),

                          width: double.infinity,
                        height: 2,
                        color: Color(0xffE8E8E8),
                        ),
                        SizedBox(height: 10,),




                        SizedBox(height: 80,),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "login3");
                          },

                          child: Container(

                            height: 87,
                            child: Center(child: Container(
                              child: Center(child: Text(
                                'تسجيل',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                                softWrap: false,
                              ),),
                              height: 44,
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
                            ),),
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x2e287092),
                                  offset: Offset(0, 3),
                                  blurRadius: 30,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],


                    )),)
            ],
          ),
          width: double.infinity,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
