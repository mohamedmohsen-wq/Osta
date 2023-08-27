import 'package:flutter/material.dart';
import 'package:osta/shered/network/lock/caoh_hilber.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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


class PageViewPage extends StatefulWidget {
 

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {

   PageController _controller = PageController(initialPage: 0);
   void somp(){
     CacheHelper.setData(key: "OnBoarding", value: true).then((value) {
       if(value==true){
         Navigator.pushNamed(context, "Login");
       }

     });
   }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: PageView(

        controller: _controller,
         pageSnapping: true,

        children: [
          Column(
            children: [
              ClipPath(
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
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
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "Login");
                              },
                              child: Text(
                                "تخطي",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Image.asset("images3/Maintenance-pana.png",width: MediaQuery.of(context).size.width*.7,height: MediaQuery.of(context).size.width*.5,),
                      SmoothPageIndicator(
                        controller: _controller,  // PageController
                        count:  3,

                        // forcing the indicator to use a specific direction
                        textDirection: TextDirection.ltr,
                        effect:  ExpandingDotsEffect(),

                      ),


                    ],
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width/.8,
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
                    InkWell(
                      onTap: (){

                          _controller.animateToPage(1, duration: Duration(microseconds:250 ), curve: Curves.linearToEaseOut);

                      },
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              ClipPath(
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
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
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "addLocation");
                              },
                              child: Text(
                                "تخطي",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Image.asset("images3/Maintenance-pana.png",width: MediaQuery.of(context).size.width*.7,height: MediaQuery.of(context).size.width*.5,),
                      SmoothPageIndicator(
                        controller: _controller,  // PageController
                        count:  3,

                        // forcing the indicator to use a specific direction
                        textDirection: TextDirection.rtl,
                        effect:  ExpandingDotsEffect(),
                      ),


                    ],
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width/.8,
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
                      'سهولة طلب الخدمة',
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
                      ),
                      textAlign: TextAlign.center,
                    ),
                    InkWell(
                      onTap: (){

                        _controller.animateToPage(2, duration: Duration(microseconds:250 ), curve: Curves.easeInOut);
                      },
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              ClipPath(
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
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
                              "",
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
                      ),
                      SizedBox(height: 15,),
                      Image.asset("images3/Maintenance-pana.png",width: MediaQuery.of(context).size.width*.7,height: MediaQuery.of(context).size.width*.5,),
                      SmoothPageIndicator(
                        controller: _controller,  // PageController
                        count:  3,

                        // forcing the indicator to use a s
                        // pecific direction
                        textDirection: TextDirection.ltr,
                        effect:  ExpandingDotsEffect(),

                      ),


                    ],
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width/.8,
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
                      'الخدمة الفورية والمجدولة',
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
                      ),
                      textAlign: TextAlign.center,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "Login");
                      },

                      child: Container(
                        width: 68,
                        height: 68,
                        child:
                        Center(child: Image.asset("images3/Select.png",width: 30,height: 30,)),
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),


        ],

      ),
    );
  }


}
