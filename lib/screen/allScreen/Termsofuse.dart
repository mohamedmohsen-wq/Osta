import 'package:flutter/material.dart';
class TermsOFUse extends StatelessWidget {
  const TermsOFUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: SingleChildScrollView(
        child: Column(children: [
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
                    Text(""),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        'شروط الإستخدام',
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
          width: double.infinity,
          margin: EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'كيفية إستخدام التطبيق',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xff2370a2),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي\nالشكل وليس المحتوى ويستخدم في صناعات المطابع ودور\nالنشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ\nالقرن الخامس عشر عندما قامت مطبعة مجهولة\nبرص مجموعة من الأحرف بشكل عشوائي',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff8a8a8a),
                  height: 1.6,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20,),
              Text(
                'اولا',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xff2370a2),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي\nالشكل وليس المحتوى ويستخدم في صناعات المطابع ودور\nالنشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ\nالقرن الخامس عشر',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff8a8a8a),
                  height: 1.6,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20,),

              Text(
                'ثانيا',
                style: TextStyle(
                  fontFamily: 'Vazirmatn',
                  fontSize: 16,
                  color: const Color(0xff2370a2),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي\nالشكل وليس المحتوى ويستخدم في صناعات المطابع ودور\nالنشر. كان لوريم إيبسوم ولايزال المعيار للنص',
                style: TextStyle(
                  fontFamily: 'Vazirmatn',
                  fontSize: 15,
                  color: const Color(0xff8a8a8a),
                  height: 1.6,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              )
            ],
          ),
        )
        ],),
      ),),
    );
  }
}
