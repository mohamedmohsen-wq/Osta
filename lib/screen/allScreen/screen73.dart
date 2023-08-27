import 'package:flutter/material.dart';

class Screen73 extends StatelessWidget {
  const Screen73({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 92,
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),

          child: Center(
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  child: Center(child: Container(
                      width: 30,
                      height: 18,
                      child: Image.asset('images2/send-button.png',fit: BoxFit.fill,)),),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
                SizedBox(width: 7,),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff1f1f2),
                    borderRadius: BorderRadius.circular(22.0),
                  ),

                  width: MediaQuery.of(context).size.width*.75,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(right: 15,left: 15),
                              child: TextFormField(

                                decoration: InputDecoration(


                                  hintText: ' اكتب هنا....',
                                    hintStyle: TextStyle(fontSize: 15,color: Color(0xff7E7E7E)),
                                    fillColor: Color(0xfff1f1f2)),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width:23 ,
                                height: 18.5,
                                child:Image.asset('images2/camera2.png',fit: BoxFit.fill,) ,

                              ),
                              SizedBox(width: 7,),
                              Container(
                                width:21 ,
                                height: 21,
                                child:Image.asset('images2/happiness.png',fit: BoxFit.fill,) ,
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
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
      ),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Text(
                            'الدعم الفني',
                            style: TextStyle(
                              fontSize: 17,
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
              Container(
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 33,
                        child: Center(
                          child: Text(
                            'مقدم الخدمة يقوم بتغيير السعر',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff1ec1ad),
                            ),
                            softWrap: false,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0x241ec1ad),
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          width: double.infinity,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
