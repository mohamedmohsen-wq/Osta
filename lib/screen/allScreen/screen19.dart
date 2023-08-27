import 'package:flutter/material.dart';

class Screen19 extends StatelessWidget {
  const Screen19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              child: Container(
                margin: EdgeInsets.only(left: 26, right: 26),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Text(
                      'تتبع على الخريطة',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: 27,
                          height: 18,
                          child: Image.asset("images2/forwardarrow.png")),
                    ),
                  ],
                ),
              ),
              width: double.infinity,
              height: 105,
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
            SizedBox(height: 2,),
            Container(
              height: MediaQuery.of(context).size.height*.89,
              width: double.infinity,
              child: Image.asset('images2/Map.png',fit: BoxFit.fill,),
            ),
            SizedBox(height: 9,),
            Container(
              margin: EdgeInsets.only(left: 26, right: 26),

              child: Center(child: Text(
                'الوصول خلال : 30 دقيقة',
                style: TextStyle(
                  fontSize: 17,
                  color: const Color(0xff1ec1ad),
                  fontWeight: FontWeight.w500,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),),
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0x111bd4be),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
            SizedBox(height: 9,),

          ],
        ),
      ),
    );
  }
}
