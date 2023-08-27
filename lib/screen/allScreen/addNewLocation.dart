import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';
import 'package:osta/shered/componnents/componnents.dart';
import 'package:osta/wegit/componnents/componnents.dart';


class AddNewLocation extends StatelessWidget {
  const AddNewLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return Scaffold(
        bottomNavigationBar: InkWell(
            onTap: (){
            },
            child: buildAlignbottomNavBa2r(context, "حفظ")),
        body: SingleChildScrollView(
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
                            "إضافة عنوان جديد",
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
              defaultTextFormField(label: "", hint: "اكتب العنون",suffix: Icon(Icons.search,color: Colors.grey,)),
              Container(
                alignment: Alignment.bottomLeft,
                child:Image.asset("images3/Group 42449.png",width: 50,height: 50,) ,
                height: 209,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage("images3/FancyMapsMap.png"),
                      fit: BoxFit.cover
                  ),

                ),),
              defaultTextFormField2(label: "اسم العنوان", hint: "المنزل",label2: "*"),
              defaultTextFormField2(label: "الدولة", hint: "مصر",label2: "*",suffix: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.amber,)),
              defaultTextFormField2(label: "المحافظة", hint: "القاهرة",label2: "*",suffix: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.amber,)),
              defaultTextFormField2(label: "المنطقة", hint: "المعادي",label2: "*",suffix: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.amber,)),
              defaultTextFormField2(label: "الشارع", hint: "ش 7 بجوار المترو",label2: "*",),
              Row(children: [
                Expanded(child: Container(child: defaultTextFormField2(label: "فيلا/الدور", hint: "12",),)),
                Expanded(child: Container(child: defaultTextFormField2(label: "شقة/فيلا", hint: "5",),)),

              ],),
              defaultTextFormField2(label: "علامة مميزة", hint: "بجوار مطعم كنتاكي",),



            ],
          ),
        ),
      );
    }, listener: (context,state){});
  }
}
