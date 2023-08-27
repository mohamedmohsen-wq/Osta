import 'package:flutter/material.dart';
import 'package:osta/wegit/componnents/componnents.dart';
class Screen81 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: SingleChildScrollView(
        child: Column(children: [
          Container(child: Column(
            children: [
              SizedBox(height: 100,),
              Center(
                child: Text(
                  'تسجيل جديد',
                  style: TextStyle(

                    fontSize: 19,
                    color: const Color(0xff1c1b20),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
              ),
              SizedBox(height: 20,),
              Textform(text: "الاسم", fontsize: 15,hint: "مصطفي ابراهيم",color: Color(0xFF2370A2),icon: Icons.person),
              SizedBox(height: 15,),
              Textform(text: "رقم الموبايل", fontsize: 15,hint: "0000 000 0000",color: Color(0xFF2370A2),icon: Icons.person),
              SizedBox(height: 15,),
              Textform(text: "البريد الإلكتروني", fontsize: 15,hint: "username@mail.com",color: Color(0xFF2370A2),icon: Icons.mail),
              SizedBox(height: 15,),
              Textform(text: "كلمة المرور", fontsize: 15,color: Color(0xFF2370A2),icon: Icons.visibility),
              SizedBox(height: 15,),
              Textform(text: "تأكيد كلمة المرور", fontsize: 15,color: Color(0xFF2370A2),icon: Icons.visibility),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(value: 1, groupValue: 1, onChanged: (va){},
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(

                            fontSize: 16,
                            color: const Color(0xff2370a2),
                          ),
                          children: [
                            TextSpan(
                              text: 'لقد قرأت واوافق على ',
                            ),
                            TextSpan(
                              text: 'شروط الإستخدام',
                              style: TextStyle(
                                color: const Color(0xfff8ae00),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        softWrap: false,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
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
              ),
              SizedBox(height: 20,),



            ],),)
        ],),
      ),),
    );
  }
}
