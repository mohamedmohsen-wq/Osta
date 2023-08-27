import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osta/shered/componnents/componnents.dart';


class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 40),
          height: 154,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "screen40");
                    },
                    child: Image.asset(
                      "images3/Group 37921.png",
                      width: 33,
                      height: 31,
                    ),
                  ),
                  Image.asset(
                    "images3/osataLogo.png",
                    width: 64,
                    height: 30,
                  ),
                  buildInkWellNotification(context),

                ],
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  'المفضلة',
                  style: TextStyle(
                    fontFamily: 'Vazirmatn',
                    fontSize: 24,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
              ),
            ],
          ),
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
        SizedBox(height: MediaQuery.of(context).size.width/2.5,),
        Image.asset("images3/Group 43216.png",width: MediaQuery.of(context).size.width/6,height: MediaQuery.of(context).size.width/6,),
        SizedBox(height: 10,),
        Text(
          'لايوجد منتجات مضافه',
          style: TextStyle(
            fontSize: 15,
            color: const Color(0xff9c9c9c),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),

      ],
    );
  }
}
