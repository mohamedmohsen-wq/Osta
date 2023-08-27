import 'package:flutter/material.dart';
class Screen62 extends StatelessWidget {
  const Screen62({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(child: Column(children: [
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
                    'العناوين',
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
        SizedBox(height: 25,),
        Container(
          height: 85,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
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
          child: Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10,top: 10),
            child: Directionality(
              textDirection:TextDirection.rtl ,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
    Image.asset("images1/map.png",width: 18.82,height: 24.96,),
                    SizedBox(width: 14,),
                    Text(
                      'العنوان',
                      style: TextStyle(

                        fontSize: 15,
                        color: const Color(0xff2370a2),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    )


                  ],),
                  Text(""),

                  Image.asset("images1/add.png",width: 27,height: 27,),

                ],),
                Container(

                  margin: EdgeInsetsDirectional.only(end: 255),
                  child: Column(


                    children: [
                      Text(
                        'المنزل',
                        style: TextStyle(

                          fontSize: 13,
                          color: const Color(0xff1d1d1b),
                        ),
                        softWrap: false,
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(end: 165),
                  child: Text(
                    'ش 7 بجوار المترو , المعادي',
                    style: TextStyle(

                      fontSize: 12,
                      color: const Color(0xff9c9c9c),
                    ),
                    softWrap: false,
                  ),
                ),
              ],),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 330),

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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                width: double.infinity,
                height: 44,
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
                child:Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'إضافة عنوان جديد',
                        style: TextStyle(

                          fontSize: 17,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                        softWrap: false,
                      ),
                      SizedBox(width: 6,),
                      Image.asset("images1/plus.png",width: 18.28,height: 18.28,),

                    ],
                  ),
                ),
              ),

              Container(height: 5,width: 134,color: Color(0xFFB7BDC8),),


            ],
          ),
        )



      ],),),
    );
  }
}
