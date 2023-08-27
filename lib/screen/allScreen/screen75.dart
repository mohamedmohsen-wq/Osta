import 'package:flutter/material.dart';

class Screen75 extends StatelessWidget {
  const Screen75({Key? key}) : super(key: key);

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
                  margin: EdgeInsets.only(left: 26, right: 26),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Text(
                            'الإشعارات',
                            style: TextStyle(
                              fontSize: 17,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          )   ,
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
                    ],
                  ),
                ),
                width: double.infinity,
                height: 105,
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
              buildContainernotification( ordernumber: ' 584745', name: 'مقدم الخدمة في الطريق اليك', date: '25/09/2022 - 8:00PM', context:context ),
              buildContainernotification( ordernumber: ' 584745', name: 'تم وصول مقدم الخدمة', date: '25/09/2022 - 8:00PM', context:context ),
              buildContainernotification( ordernumber: ' 584745', name: 'مقدم الخدمة في الطريق اليك', date: '25/09/2022 - 8:00PM', context:context ),
            ],
          ),
          width: double.infinity,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }

  Widget buildContainernotification(
      {required BuildContext context,required String name,required String ordernumber,required String date}) {
    return Container(
                child: Container(
                  margin: EdgeInsets.only(right: 16,left: 16),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width*.3103448275862,
                            width: double.infinity,
                            child: Container(
                              margin: EdgeInsets.only(right: 10,left: 10),

                              height: 108,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 5,),
                                            Text(
                                              name,
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width/25,
                                                color: const Color(0xff2370a2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center,
                                              softWrap: false,
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              '$ordernumber\t: رقم الطلب',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: const Color(0xff9c9c9c),
                                              ),
                                              textAlign: TextAlign.center,
                                              softWrap: false,
                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              height: 26,
                                              child: Center(child: Text(
                                                'تفاصيل الطلب',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: const Color(0xffffffff),
                                                ),
                                                softWrap: false,
                                              ),),
                                              width: MediaQuery.of(context).size.width*.2407407407407,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.0, -1.0),
                                                  end: Alignment(0.0, 1.0),
                                                  colors: [const Color(0xff3d90b4), const Color(0xff5addff)],
                                                  stops: [0.0, 1.0],
                                                ),
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            SizedBox(height: 5,),

                                          ],
                                        ),
                                      ),
                                    SizedBox(width: 9,),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 65),
                                        width: 28,
                                        height: 28,
                                        child: Image.asset('images3/notification1.png',fit: BoxFit.cover,)),
                                  ],),



                                ],),
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

                        ],
                      ),

                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Row(children: [
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color(0xff9c9c9c),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],),
                      )

                    ],
                  ),
                ));
  }
}
