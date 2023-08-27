import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildClipPath(context),
              SizedBox(height: 20,),
              Text(
                'نسيت كلمة المرور؟',
                style: TextStyle(
                  fontFamily: 'Vazirmatn',
                  fontSize: 19,
                  color: const Color(0xff1c1b20),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10,),

              Text(
                'ادخل كلمة المرور الجديدة',
                style: TextStyle(
                  fontFamily: 'Vazirmatn',
                  fontSize: 15,
                  color: const Color(0xff9c9c9c),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20,),

              defaultTextFormField(label: "كلمة المرور الجديدة", hint: "",suffix: IconButton(onPressed: (){
                cubit.changeLoginPassword();
              }, icon:cubit.loginPassword? Icon(Icons.visibility_off_sharp):Icon(Icons.visibility),color: Color(0xff1C1B20)),obscureText: cubit.loginPassword,textInputType: TextInputType.visiblePassword),
              defaultTextFormField(label: "تأكيد كلمة المرور", hint: "",suffix: IconButton(onPressed: (){
                cubit.changeLoginPassword2();

              }, icon:cubit.loginPassword2==true? Icon(Icons.visibility_off_sharp):Icon(Icons.visibility),color: Color(0xff1C1B20),),obscureText: cubit.loginPassword2,textInputType: TextInputType.visiblePassword),
           SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamedAndRemoveUntil('Login', (Route<dynamic> route) => false);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      'حفظ',
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
    }, listener: (context,state){});
  }
}
