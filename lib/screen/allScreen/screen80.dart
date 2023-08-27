import 'package:flutter/material.dart';
import 'package:osta/wegit/componnents/componnents.dart';
class Screen80 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: Column(children: [
        Container(child: Column(
          children: [
            SizedBox(height: 200,),
            Center(
              child: Text(
                'نسيت كلمة المرور؟',
                style: TextStyle(

                  fontSize: 19,
                  color: const Color(0xff1c1b20),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text(
                'ادخل كلمة المرور الجديدة',
                style: TextStyle(

                  fontSize: 15,
                  color: const Color(0xff9c9c9c),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
            SizedBox(height: 20,),
            Textform(text: "كلمة المرور الجديدة", fontsize:15,color: Color(0xFF2370A2),icon: Icons.visibility),
            SizedBox(height: 15,),
            Textform(text: "تأكيد كلمة المرور", fontsize:15,color: Color(0xFF2370A2),icon: Icons.visibility),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.641, -0.872),
                  end: Alignment(1.353, 1.348),
                  colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x6347c1f0),
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
            )
          ],),)
      ],),),
    );
  }
}
