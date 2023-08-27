import 'package:flutter/material.dart';

Widget Textform({

  required String text,
  required double fontsize,
  String? hint,
  var color = const Color(0xFFFFFFFF),
  IconData? icon,
}

    )=>Padding(
      padding: const EdgeInsets.only(right: 28.0,left: 28),
      child: Directionality(
  textDirection: TextDirection.rtl,

        child: TextFormField(
          style: TextStyle(color: Color(0xFF9C9C9C)),



  decoration: InputDecoration(
    hoverColor:Color(0xff9C9C9C) ,







        labelText: text,
        labelStyle: TextStyle(fontSize: fontsize,color:color  ),
        hintText: hint,
        hintStyle: TextStyle(color: Color(0xFF9C9C9C),fontSize: 14),
        suffixIcon: IconButton(onPressed: (){}, icon: Icon(icon),color: Color(0Xff1C1B20),),
        border:OutlineInputBorder(

          borderRadius: BorderRadius.circular(15)
        ),





  ),
),
      ),
    );


Widget buildAlignbottomNavBar(BuildContext context,String name) {
  return Align(
    alignment: Alignment.bottomCenter,

    child: Container(

      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 44,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 17,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w600,
            ),
            softWrap: false,
          ),
        ),
        width: MediaQuery.of(context).size.width * .82,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.641, -0.872),
            end: Alignment(1.353, 1.348),
            colors: [
              const Color(0xff1e3a64),
              const Color(0xff5addff)
            ],
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
      ),
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
    ),
  );
}
Widget buildAlignbottomNavBa2r(BuildContext context,String name) {
  return Container(

    width: double.infinity,
    child: Container(
      margin: EdgeInsets.all(10),
      height: 44,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 17,
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),
      ),
      width: MediaQuery.of(context).size.width * .82,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.641, -0.872),
          end: Alignment(1.353, 1.348),
          colors: [
            const Color(0xff1e3a64),
            const Color(0xff5addff)
          ],
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
    ),
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
  );
}
