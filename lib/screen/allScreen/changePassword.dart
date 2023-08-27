import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/shered/componnents/componnents.dart';


import '../../block/cubit.dart';
import '../../block/state.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return Scaffold(
        bottomNavigationBar:              Container(
          child:Center(
            child: InkWell(

              child: Container(
                height:44 ,
                margin: EdgeInsets.symmetric(horizontal: 10),
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
                      color: const Color(0x3047c1f0),
                      offset: Offset(0, 5),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
            ),
          ) ,
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
        )
        ,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 112,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.0, 0.103),
                  end: Alignment(0.975, 0.218),
                  colors: [
                    const Color(0xff29f19b),
                    const Color(0xff0db6e1)
                  ],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 23.0, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'تعديل كلمة المرور',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
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
              ),
            ),
            SizedBox(height: 20,),
            defaultTextFormField2(label: "كلمة المرور الحالية", hint: "***************************",suffix: InkWell(
                onTap: (){
                  cubit.changeStateOfObscureText(1);
                },
                child: Icon(cubit.oldPassword==true?Icons.visibility_off:Icons.visibility,color: Colors.black,)),obscureText: cubit.oldPassword),
            SizedBox(height: 10,),

            defaultTextFormField2(label: "كلمة المرور الجديدة", hint: "***************************",suffix: InkWell(
                onTap: (){
                  cubit.changeStateOfObscureText(2);
                },
                child: Icon(cubit.newPassword==true?Icons.visibility_off:Icons.visibility,color: Colors.black,),),widthLabel: 120,obscureText: cubit.newPassword),
            SizedBox(height: 10,),

            defaultTextFormField2(label: "تأكيد كلمة المرور", hint: "***************************",suffix: InkWell(
                onTap: (){
      cubit.changeStateOfObscureText(3);
      },
            child: Icon(cubit.newPasswordDone==true?Icons.visibility_off:Icons.visibility,color: Colors.black,)),obscureText: cubit.newPasswordDone ),

          ],),
        ),
      );
    }, listener: (context,state){});
  }
}
