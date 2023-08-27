import 'package:flutter/material.dart';
import 'package:osta/shered/componnents/componnents.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'إضافة عنوان جديد',
                    style: TextStyle(

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
        defaultTextFormField2(label: "", hint: ""),
      ],),
    );
  }
}
