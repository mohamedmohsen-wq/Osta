import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class marchen2 extends StatelessWidget {


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
                          Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Center(child: Text("المنتجات",style: TextStyle(fontSize: 20,color: Colors.white),)),
                          ),
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

                      SizedBox(height: 60,),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [



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
              SizedBox(height: 80,),
              Container(
                width: double.infinity,
                child:
                Column(children: [
                  Image.asset("images3/Group 43216.png",width: MediaQuery.of(context).size.width/6,height: MediaQuery.of(context).size.width/6,),
                  SizedBox(height: 10,),
                  Text(
                    'لايوجد منتجات مضافه',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff9c9c9c),
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                  SizedBox(height: 150,),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "marchen");
                    },

                    child: Container(

                      height: 87,
                      child: Center(child: Container(
                        child: Center(child: Text(
                          'اضافة منتج',
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

                ],)

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
