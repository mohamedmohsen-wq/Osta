import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class Tes extends StatelessWidget {
  const Tes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
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
                  padding:
                  const EdgeInsets.only(right: 23.0, top: 30, left: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "screen40");
                              },
                              child: Image.asset(
                                "images3/Group 37921.png",
                                width: 33.49,
                                height: 31.01,
                              )),
                          SizedBox(
                            width: 20,
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'السوق',
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
                          child: Image.asset(
                            "images1/mo1.png",
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                height: 140,
                child: ImageSlideshow(
                  initialPage: 0,
                  indicatorBackgroundColor: Colors.grey,
                  indicatorColor: Colors.yellow[900],
                  isLoop: false,
                  //autoPlayInterval: 3000,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images3/Base.png"),
                              )),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images3/Base.png"),
                              )),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images3/Base.png"),
                              )),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images3/Base.png"),
                              )),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images3/Base.png"),
                              )),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images3/Base.png"),
                              )),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 25),
                child: Text(
                  'المضاف حديثا',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff2370a2),
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: false,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // ConditionalBuilder(
              //
              //     condition: true,
              //     builder: (context)=>
              //     fallback: (context)=>Center(child: CircularProgressIndicator())


              //



            ],
          ),
        ),
      ),
    );
  }
}
