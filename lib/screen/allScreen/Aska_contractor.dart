import 'package:flutter/material.dart';
import 'package:osta/model/otlbmeqawel.dart';

class Screen27 extends StatelessWidget {
  const Screen27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(left: 26, right: 26),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 30,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          "اطلب مقاول",
                          style: TextStyle(
                            fontSize: 16,
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
                  SizedBox(height: 0,),

                  Container(
                    width: 107,
                    height: 47,
                    child: Image.asset('images2/ostalogo1.png'),
                  ),

                ],
              ),
            ),
            width: double.infinity,
            height: 160,
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
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 36,
            width: double.infinity,
            child: Center(
              child: Text(
                'ما تحصل عليه مع اسطى',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff2370a2),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          child: Image.asset('images2/schedule.png'),
                        ),
                        Text(
                          'إنجاز',
                          style: TextStyle(
                            fontSize: 13,
                            color: const Color(0xff1d1d1b),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        )
                      ],
                    ),
                    height: 78,
                    decoration: BoxDecoration(
                      color: const Color(0x24fe6387),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Expanded(
                  child: Container(
                    height: 78,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          child: Image.asset('images2/insurance.png'),
                        ),
                        Text(
                          'ضمان 30 يوم',
                          style: TextStyle(
                            fontSize: 13,
                            color: const Color(0xff1d1d1b),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0x2b45d5a3),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Expanded(
                  child: Container(
                    height: 78,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          child: Image.asset('images2/medal.png'),
                        ),
                        Text(
                          'جودة',
                          style: TextStyle(
                            fontSize: 13,
                            color: const Color(0xff1d1d1b),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0x2efeb600),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            width: double.infinity,
            child: Image.asset('images2/divider.png'),
          ),
SizedBox(height: 20,),
GridView.count(
  padding: EdgeInsets.symmetric(horizontal: 20),
  physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
  shrinkWrap: true,
  crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5,childAspectRatio: 2,children: [
              ...itemMeqawel.map((e) {
                return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "screen28",arguments: e.name);
                    },
                    child: buildContainer27(text: e.name));
              }).toList()

],),
          SizedBox(height: 10,),

        ],),
      )
        ,),
    );
  }

  Container buildContainer27({
  required String text,
}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("images3/icon27.png",width: 35.92,height: 33,),
          SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(

              fontSize: 14,
              color: const Color(0xff1d1d1b),
            ),

          )
      ],),
                height: 85,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffebebeb)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0d000000),
                      offset: Offset(0, 1),
                      blurRadius: 20,
                    ),
                  ],
                ),
              );
  }
}
