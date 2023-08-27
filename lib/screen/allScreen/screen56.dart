import 'package:flutter/material.dart';
import 'package:osta/wegit/componnents/componnents.dart';
class Screen56 extends StatelessWidget {
  const Screen56({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 170),

        width: double.infinity,
        height: 87,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              width: double.infinity,
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
              child: Center(
                child: Text(
                  'حفظ',
                  style: TextStyle(

                    fontSize: 17,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w600,
                  ),
                  softWrap: false,
                ),
              ),
            ),

            Container(height: 5,width: 134,color: Color(0xFFB7BDC8),)

          ],
        ),
      ),
      body: Container(
        child: Column(children: [
          Container(child: Column(children: [
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
                    child: Text(
                      'تعديل كلمة المرور',
                      style: TextStyle(
                        // fontFamily: 'Vazirmatn',
                        fontSize: 18,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),

                  Image.asset("images1/mo1.png",),

                ],),
              ),
            ),
            Container(child: Column(

              children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Textform(text: "كلمة المرور الحالية", fontsize: 15,color: Color(0xFF2370A2,),icon: Icons.visibility),
                    SizedBox(height: 25,),
                    Textform(text: "كلمة المرور الجديدة", fontsize: 15,color: Color(0xFF2370A2,),icon: Icons.visibility),
                    SizedBox(height: 25,),
                    Textform(text: "تأكيد كلمة المرور", fontsize: 15,color: Color(0xFF2370A2,),icon: Icons.visibility),
                  ],
                ),
              ),







            ],),)

          ],),)

        ],),
      ),
    );
  }
}
