import 'package:country_code_picker/country_code_picker.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:date_picker_timeline/extra/color.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';

import '';
import '../../wegit/componnents/componnents.dart';
class Screen28 extends StatelessWidget {
  const Screen28({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      final name = ModalRoute.of(context)!.settings.arguments as String;
      LinearGradient buildLinearGradient() {
        return LinearGradient(
          begin: Alignment(-0.962, 0.0),
          end: Alignment(0.965, 0.484),
          colors: [const Color(0xff3d90b4), const Color(0xff5addff)],
          stops: [0.0, 1.0],
        );
      }
      OstaCubit cubit = BlocProvider.of(context);

      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 105,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Text(
                              name,
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          arrowBack(context)
                        ],),
                    ],
                  ),

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

                defaultTextFormField(label: "الاسم", hint: "مصطفي خالد"),
                defaultTextFormField(label: "رقم الموبايل", hint: "0000 000 0000", suffix: Container(decoration: BoxDecoration(shape: BoxShape.circle,),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: CountryCodePicker(
                      showDropDownButton: true,

                      flagWidth: 40,
                      flagDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      dialogSize: Size(300, 300),
                      padding: EdgeInsets.only(right: 5),


                      textStyle: TextStyle(
                          color: Color(0xff1C1B20), fontWeight: FontWeight.w500),

                      onChanged: print,

                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')

                      initialSelection: 'eg',

                      favorite: ['+20', 'eg'],

                      // optional. Shows only country name and flag

                      showCountryOnly: false,

                      // optional. Shows only country name and flag when popup is closed.

                      showOnlyCountryWhenClosed: false,

                      // optional. aligns the flag and the Text left

                      alignLeft: false,
                    ),
                  ),
                ),textInputType: TextInputType.number),

                defaultTextFormField(label: "المساحة الإجمالية", hint: "150",suffix:
                Padding(
                  padding: const EdgeInsets.only(top: 12.0,right: 13),
                  child: Text("م2"),
                )),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: DottedDecoration(
                    color: Color(0xffDFDFDF),
                    strokeWidth: 1,
                    linePosition: LinePosition.bottom,
                  ),
                  width: double.infinity,
                ),
                SizedBox(height: 15,),

                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        InkWell(
                            onTap: (){
showModalBottomSheet(context: context, builder: (_){
  return Container(
    height: 350,
    child: Column(
      children: [
        Expanded(
            child: CupertinoDatePicker(

              mode: CupertinoDatePickerMode.dateAndTime,
              initialDateTime: DateTime(1969, 1, 1, 11, 33),
              onDateTimeChanged: (DateTime newDateTime) {
                //Do Some thing

              },
              use24hFormat: false,
              minuteInterval: 1,
            ),
        ),
        InkWell(child: buildAlignbottomNavBa2r(context, "تأكيد"),onTap: (){
            Navigator.maybePop(context);
        },)                                    ],
    ),
  );
});
                            },
                            child: Image.asset("images3/appointment.png",width: 22,height: 22,)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ' الوقت و التاريخ المناسب للتواصل  ',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff2370a2),
                              ),
                              softWrap: false,
                            ),
                            Text(
                              '17/03/2022 - 3:00 PM',
                              style: TextStyle(
                                fontSize: 13,
                                color: const Color(0xff9c9c9c),
                              ),
                              softWrap: false,
                            )
                          ],
                        )
                      ],),
                    ],
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
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: DottedDecoration(
                    color: Color(0xffDFDFDF),
                    strokeWidth: 1,
                    linePosition: LinePosition.bottom,
                  ),
                  width: double.infinity,
                ),
                SizedBox(height: 20,),

                Container(
                  child:   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,

                        child:   TextFormField(

                          keyboardType: TextInputType.multiline,
                          maxLines: 4,

                          decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "اكتب وصف مشروعك هنا",
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: const Color(0xff9c9c9c),
                              ),
                              labelText: "وصف المشروع",
                              labelStyle: TextStyle(

                                fontSize: 14,
                                color: const Color(0xff2370a2),
                              ),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),

                                borderSide: BorderSide(
                                  color: Color(0xffE6E6E6),
                                ),),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),

                                borderSide: BorderSide(
                                  color: Color(0xffE6E6E6),
                                ),),

                              suffixIcon:
                              Padding(
                                padding: const EdgeInsets.only(top: 90.0),
                                child: Image.asset("images2/camera.png",width: 25,height: 20,),
                              )

                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                SizedBox(height: MediaQuery.of(context).size.width/2.5,),

                buildAlignbottomNavBar(context,"إرسل الآن"),


              ],),
          ),
        ),
      );
    }, listener: (context,state){});
  }


}
