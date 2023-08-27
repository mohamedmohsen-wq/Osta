import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:osta/shered/componnents/componnents.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildClipPath(context),
            SizedBox(height: 20,),
            Text(
              'نسيت كلمة المرور؟',
              style: TextStyle(
                fontSize: 19,
                color: const Color(0xff1c1b20),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'ادخل رقم الموبايل لإرسال الرمز عليه',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff9c9c9c),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20,),

            defaultTextFormField(label: "رقم الموبايل", hint: "0000 000 0000", suffix: Container(decoration: BoxDecoration(shape: BoxShape.circle,),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Text("")
              ),
            ),textInputType: TextInputType.number),
            SizedBox(height: 20,),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "OtpTextField");
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    'التالي',
                    style: TextStyle(
                      fontSize: 17,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
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
                      color: const Color(0x6347c1f0),
                      offset: Offset(0, 2),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
