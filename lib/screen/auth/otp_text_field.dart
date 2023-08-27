import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';


class OtpTextFieldScreen extends StatelessWidget {
  const OtpTextFieldScreen({Key? key}) : super(key: key);

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
                // fontFamily: 'Vazirmatn',
                fontSize: 19,
                color: const Color(0xff1c1b20),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'ادخل الرمز المرسل على رقم موبايلك',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff9c9c9c),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20,),

            OtpTextField(

              numberOfFields: 4,

              fieldWidth: 60,
              focusedBorderColor: Color(0xFFE6E6E6),
              borderColor: Color(0xFFE6E6E6),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              autoFocus: true,
              filled: true,

              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              // runs when every textfield is filled
              onSubmit: (String verificationCode){
                Navigator.pushNamed(context, "NewPassword");
                // showDialog(
                //     context: context,
                //     builder: (context){
                //       return AlertDialog(
                //         title: Text("Verification Code"),
                //         content: Text('Code entered is $verificationCode'),
                //       );
                //     }
                // );
              }, // end onSubmit
            ),
            SizedBox(height: 10,),
            TweenAnimationBuilder<Duration>(

                duration: Duration(seconds: 45),
                tween: Tween(begin: Duration(seconds: 45), end: Duration.zero),
                onEnd: () {
                  print('Timer ended');
                },
                builder: (BuildContext context, Duration value, Widget? child) {
                  final minutes = value.inMinutes;
                  final seconds = value.inSeconds % 60;
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text('$minutes:$seconds',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff9C9C9C),
                              fontWeight: FontWeight.w500,
                              fontSize: 18)));
                }),
            InkWell(
              onTap: (){
                // cubit.restartDuration();
              },
              child: Text(
                'إعادة الإرسال',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xff1ec1ad),
                ),
                softWrap: false,
              ),
            ),
            SizedBox(height: 20,),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "NewPassword");
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
