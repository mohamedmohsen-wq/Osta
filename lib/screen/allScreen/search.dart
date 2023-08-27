import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(right: 23.0,top: 30,left: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text("         "),

                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset("images1/mo1.png",)),
              ],),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          width: double.infinity,
          height: 40,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: TextFormField(
                cursorColor: Color(0xff29F19B),
                style: TextStyle(fontSize: 15),
cursorWidth:2 ,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ابحث عن منتج, اسم تاجر",
                  suffixIcon: Icon(Icons.search,color: Color(0xff29F19B),)

                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: const Color(0xfff5f5f5),
            borderRadius: BorderRadius.circular(21.0),
            border: Border.all(width: 1.3, color: const Color(0xffececec)),
          ),
        )

      ],),
    );
  }
}
