import 'package:flutter/material.dart';
Widget defaultTextFormField({
   String? label,
 String? hint,
  bool obscureText = false ,
  TextInputType textInputType = TextInputType.name,
  Widget? suffix,
  validator,
  TextEditingController? textEditingController,
  int maxLine = 1,
  double horizontal = 20,
  Function? onChanged (value)?,





}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: 10),
      child: TextFormField(
        maxLines: maxLine,
        onChanged: onChanged,
        obscureText: obscureText,
        keyboardType: textInputType,
        controller: textEditingController,
        validator: validator,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color(0xffE6E6E6),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),

            borderSide: BorderSide(
              color: Color(0xffE6E6E6),
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 15,
            color: const Color(0xff2370a2),
            height: 1.4,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14,
            color: const Color(0xff9c9c9c),
            height: 1.5,
          ),
          suffixIcon:suffix,

          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    ),
  );
}

Widget defaultTextFormField2({
  required String label,
   String label2 = "",
  required String hint,
  bool obscureText = false ,
  TextInputType textInputType = TextInputType.name,
  Widget? suffix,
  validator,
  TextEditingController? textEditingController,
  int maxLine = 1,
  double widthLabel = 115






}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(

        maxLines: maxLine,
        obscureText: obscureText,
        keyboardType: textInputType,
        controller: textEditingController,
        validator: validator,
          decoration: InputDecoration(

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),

              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),

            hintText: hint,
            border: OutlineInputBorder(

              borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight:  Radius.circular(20),
                bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),

              ),
              borderSide: BorderSide(
                color: Color(0xffE6E6E6),
                width: 1.0,
              ),


            ),
            suffixIcon: suffix,
            label: Container(
              width: widthLabel,
              child: Row(
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff2370a2),
                      height: 1.4,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),

                  Text(
                    label2,
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xffefb73a),
                    ),
                    softWrap: false,
                  ),
                ],
              ),
            ),
            labelStyle: TextStyle(
                fontSize: 24, color: Color(0xff2370a2)),

          )
      ),
    ),
  );
}
Widget arrowBack(context,) {
  return InkWell(
    onTap: (){
      Navigator.maybePop(context);
    },
    child: Padding(

      padding: const EdgeInsets.only(right: 18),
      child: Image.asset("images3/back.png",width: 30,height: 25,),
    ),
  );
}
Widget buildClipPath(BuildContext context) {
  return ClipPath(
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 40,),
          arrowBack(context),
          SizedBox(height: 40,),

          Center(child: Image.asset("images3/osataLogo.png",width: 188,height: 80,)),

        ],
      ),
      width: MediaQuery.of(context).size.width,
      height: 280,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.088),
          end: Alignment(0.0, 1.0),
          colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
          stops: [0.0, 1.0],
        ),
      ),
    ),
    clipper: CustomClipPath(),
  );
}
Widget buildClipPathPageView(BuildContext context,String accept) {
  return Column(
    children: [
      ClipPath(
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CircleAvatar(
                     radius: MediaQuery.of(context).size.width/15,
                     backgroundColor: Colors.black26,
                     child: Text(
                       'EN',
                       style: TextStyle(
                         fontFamily: 'DIN Next LT Arabic',
                         fontSize: 17,
                         color: const Color(0xffffffff),
                         fontWeight: FontWeight.w500,
                         height: 1.411764705882353,
                       ),
                       textAlign: TextAlign.center,
                     ),
                   ),
                  Text(
                    accept,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff1c1b20),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  )
                ],
              ),
              SizedBox(height: 15,),
              Image.asset("images3/Maintenance-pana.png",width: MediaQuery.of(context).size.width*.7,height: MediaQuery.of(context).size.width*.5,),


            ],
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.088),
              end: Alignment(0.0, 1.0),
              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        clipper: CustomClipPath(),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'خدمات الصيانة',
              style: TextStyle(
                fontFamily: 'Vazirmatn',
                fontSize: 19,
                color: const Color(0xff1c1b20),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
            Text(
              'لوريم إيبسوم طريقة لكتابة النصوص في التصميم\nالجرافيكي تستخدم بشكل شائع لتوضيح الشكل\nالمرئي للمستند',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff7e7e7e),
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 68,
              height: 68,
              child:
              Center(child: Image.asset("images1/mo1.png")),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x5e1bd4be),
                    offset: Offset(0, 8),
                    blurRadius: 22,
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
final _currentPageNotifier = ValueNotifier<int>(0);


class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height-60);
    path.quadraticBezierTo(size.width/4 , size.height , size.width/2 , size.height);
    path.quadraticBezierTo(size.width - (size.width/4), size.height, size.width, size.height-60);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget buildInkWellNotification(BuildContext context) {
  return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "screen75");
      },
      child: Image.asset("images3/Top Buttons.png",width: 30,height: 30,));
}

Widget buildColumnServiceOrder() {
  return Column(children: [

    Container(
      width: double.infinity,
      height: 164,
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
          padding: const EdgeInsets.only(right: 12.0,left: 12,top:70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images1/Lock.png",width: 33.49,height: 31.01,),

              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset("images1/osta.png",width: 68.1,height: 28.44,),
              ),
              Image.asset("images1/notifications.png",width: 28.47,height: 26.34,),


            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top:13.0),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 129,
                height: 36,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, 1.0),
                    colors: [const Color(0xffF3F3F3).withOpacity(0.2), const Color(0xffF3F3F3).withOpacity(0.2)],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:
                Center(
                    child: Text(
                      'طلبات المتجر',
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xffffffff),
                      ),
                      softWrap: false,
                    )
                ),
              ),
              SizedBox(width: 15,),
              Container(
                width: 129,
                height: 36,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, 1.0),
                    colors: [
                      const Color(0xfffecc00)
                      , const Color(0xfff8ae00)
                    ],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    'طلبات الخدمات',
                    style: TextStyle(

                      fontSize: 14,
                      color: const Color(0xffffffff),
                    ),
                    softWrap: false,
                  ),
                ),
              ),


            ],),
        )
      ],),
    ),
    SizedBox(height: 15,),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        Container(
          height: 218,
          width: double.infinity,
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
          child: Column(children: [
            Container(
              width: double.infinity,


              decoration: BoxDecoration(
                color: const Color(0x2b1bd4be),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      '23/05/2022',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 11,
                        color: const Color(0xff9c9c9c),
                        height: 1.9090909090909092,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    Row(
                      children: [
                        Text(
                          'تم التأكيد',
                          style: TextStyle(

                            fontSize: 14,
                            color: const Color(0xff1ec1ad),
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width:4,),
                        Image.asset("images1/select1.png",width: 18.23,height: 18.23,),

                      ],
                    ),

                  ],),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,top: 10),
                child: Row(children: [
                  Image.asset("images1/person.png",width: 41,height: 41,),
                  SizedBox(width: 5,),
                  Column(children: [
                    Text(
                      'مصطفي ابراهيم',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff1d1d1b),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Row(

                        children: [



                          Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                          SizedBox(width:4,),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: 'Vazirmatn',
                              fontSize: 12,
                              color: const Color(0xff2370a2),
                            ),
                            softWrap: false,
                          ),

                        ],),
                    )
                  ],)
                ],),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الطلب : 584745',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'وصف المشكلة',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff2370a2),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff9c9c9c),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'الإجمالي : 225 جنيه',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1ec1ad),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                  ],),
              ),
            )
          ],),
        ),
        SizedBox(height: 15,),
        Container(
          height: 218,
          width: double.infinity,
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
          child: Column(children: [
            Container(
              width: double.infinity,


              decoration: BoxDecoration(
                color: const Color(0x2b1bd4be),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      '23/05/2022',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 11,
                        color: const Color(0xff9c9c9c),
                        height: 1.9090909090909092,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    Row(
                      children: [
                        Text(
                          'في الطريق',
                          style: TextStyle(

                            fontSize: 14,
                            color: const Color(0xff1ec1ad),
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width:4,),
                        Image.asset("images1/select1.png",width: 18.23,height: 18.23,),

                      ],
                    ),

                  ],),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,top: 10),
                child: Row(children: [
                  Image.asset("images1/person.png",width: 41,height: 41,),
                  SizedBox(width: 5,),
                  Column(children: [
                    Text(
                      'مصطفي ابراهيم',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff1d1d1b),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Row(

                        children: [



                          Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                          SizedBox(width:4,),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: 'Vazirmatn',
                              fontSize: 12,
                              color: const Color(0xff2370a2),
                            ),
                            softWrap: false,
                          ),

                        ],),
                    )
                  ],)
                ],),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الطلب : 584745',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'وصف المشكلة',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff2370a2),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff9c9c9c),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'الإجمالي : 225 جنيه',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1ec1ad),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                  ],),
              ),
            )
          ],),
        ),
        SizedBox(height: 15,),
        Container(
          height: 218,
          width: double.infinity,
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
          child: Column(children: [
            Container(
              width: double.infinity,


              decoration: BoxDecoration(
                color: const Color(0x2b1bd4be),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      '23/05/2022',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 11,
                        color: const Color(0xff9c9c9c),
                        height: 1.9090909090909092,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    Row(
                      children: [
                        Text(
                          'تم الانتهاء',
                          style: TextStyle(

                            fontSize: 14,
                            color: const Color(0xff1ec1ad),
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width:4,),
                        Image.asset("images1/select1.png",width: 18.23,height: 18.23,),

                      ],
                    ),

                  ],),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,top: 10),
                child: Row(children: [
                  Image.asset("images1/person.png",width: 41,height: 41,),
                  SizedBox(width: 5,),
                  Column(children: [
                    Text(
                      'مصطفي ابراهيم',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff1d1d1b),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Row(

                        children: [



                          Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                          SizedBox(width:4,),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: 'Vazirmatn',
                              fontSize: 12,
                              color: const Color(0xff2370a2),
                            ),
                            softWrap: false,
                          ),

                        ],),
                    )
                  ],)
                ],),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الطلب : 584745',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'وصف المشكلة',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff2370a2),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff9c9c9c),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images1/contener.png",width: 33,height: 33,),

                          Text(""),
                          Text(
                            'الإجمالي : 225 جنيه',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xff1ec1ad),

                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                  ],),
              ),
            )
          ],),
        ),
        SizedBox(height: 15,),
        Container(
          height: 218,
          width: double.infinity,
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
          child: Column(children: [
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                color: const Color(0x2bff8b88),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x02000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      '23/05/2022',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 11,
                        color: const Color(0xff9c9c9c),
                        height: 1.9090909090909092,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    Row(
                      children: [
                        Text(
                          'تم الإلغاء',
                          style: TextStyle(

                            fontSize: 14,
                            color: const Color(0xfffe0500),
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width:4,),
                        Container(
                          width: 19,
                          height: 19,

                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xfff3997b),
                                const Color(0xfff08165),
                                const Color(0xffd92f26)
                              ],
                              stops: [0.0, 0.14, 1.0],
                            ),
                            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          ),
                          child: Image.asset("images1/close.png",width: 8.81,height: 8.78,),
                        )

                      ],
                    ),

                  ],),
              ),

            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,top: 10),
                child: Row(children: [
                  Image.asset("images1/person.png",width: 41,height: 41,),
                  SizedBox(width: 5,),
                  Column(children: [
                    Text(
                      'مصطفي ابراهيم',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff1d1d1b),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Row(

                        children: [



                          Image.asset("images1/star.png",width: 11.84,height: 11.3,),
                          SizedBox(width:4,),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: 'Vazirmatn',
                              fontSize: 12,
                              color: const Color(0xff2370a2),
                            ),
                            softWrap: false,
                          ),

                        ],),
                    )
                  ],)
                ],),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الطلب : 584745',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'وصف المشكلة',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff2370a2),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff9c9c9c),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images1/contener.png",width: 33,height: 33,),

                          Text(""),
                          Text(
                            'الإجمالي : 225 جنيه',
                            style: TextStyle(

                              fontSize: 14,
                              color: const Color(0xff1ec1ad),

                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                  ],),
              ),
            )
          ],),
        ),
        SizedBox(height: 15,),
        Container(
          height: 218,
          width: double.infinity,
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
          child: Column(children: [
            Container(
              width: double.infinity,


              decoration: BoxDecoration(
                color: const Color(0x2b1bd4be),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      '23/05/2022',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 11,
                        color: const Color(0xff9c9c9c),
                        height: 1.9090909090909092,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    Row(
                      children: [
                        Text(
                          'طلب مجدول',
                          style: TextStyle(

                            fontSize: 14,
                            color: const Color(0xff1ec1ad),
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        SizedBox(width:4,),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [const Color(0xff29f19b), const Color(0xff0db6e1)],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          ),
                          child: Image.asset("images1/date-solid.png",),
                        )

                      ],
                    ),

                  ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 9.0,top: 10),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'التاريخ والوقت',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 13,
                        color: const Color(0xff2d648c),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    )
                  ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 19.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '13/05/2022 - 3:00 PM',
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontSize: 16,
                        color: const Color(0xfff8ae00),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    )
                  ],),
              ),
            ),

            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الطلب : 584745',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1d1d1b),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'وصف المشكلة',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff2370a2),
                        height: 1.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'لوريم إيبسوم طريقة لكتابة النصوص في\nالتصميم الجرافيكي تستخدم بشكل شائع',
                      style: TextStyle(

                        fontSize: 13,
                        color: const Color(0xff9c9c9c),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'الإجمالي : 225 جنيه',
                      style: TextStyle(

                        fontSize: 14,
                        color: const Color(0xff1ec1ad),

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                  ],),
              ),
            )
          ],),
        ),
        SizedBox(height: 15,),
      ],),)
  ],);
}
