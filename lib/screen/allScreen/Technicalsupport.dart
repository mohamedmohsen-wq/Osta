import 'package:flutter/material.dart';
class Technicalsupport extends StatelessWidget {
  const Technicalsupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
              padding: const EdgeInsets.only(right: 23.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("         "),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'الدعم الفني',
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
                ],),
            ),
          ),
          SizedBox(height:20 ,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 21,
                    //MediaQuery.of(context).size.height*((21.41*.5)/375),
                    width: 21,
            //MediaQuery.of(context).size.width*((21.41)/375),
                    child: Center(child: Text('3'),),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [const Color(0xffe5cc13), const Color(0xfff39200)],
                        stops: [0.0, 1.0],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(9999.0)),
                    ),
                  ),
                  Text(
                    ' رقم الطلب :32145212',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff2370a2),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل\nوليس المحتوى ويستخدم في صناعات المطابع ودور النشر',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9c9c9c),
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              )
            ],),
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
          )


        ],
      ),
    );
  }
}
