import 'package:flutter/material.dart';
class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 219,

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
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 23.0,top: 55),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("   "),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        'الشروط والاحكام',
                        style: TextStyle(

                          fontSize: 17,
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
                  ],),
              ),
              SizedBox(height: 20,),
              Image.asset("images3/osataLogo.png",width: 163.85,height: 68.42,),


            ],),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff8a8a8a),

                  ),
                  textDirection: TextDirection.rtl,

                ),
                SizedBox(height: 10,),
                Text(
                  'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر',
                  style: TextStyle(
                    fontFamily: 'Vazirmatn',
                    fontSize: 15,
                    color: const Color(0xff8a8a8a),
                  ),
                  textDirection: TextDirection.rtl,

                ),
                SizedBox(height: 10,),

                Text(
                  'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff8a8a8a),
                  ),
                  textDirection: TextDirection.rtl,

                )
              ],
            ),
          ),



        ],
      ),
    );
  }
}
