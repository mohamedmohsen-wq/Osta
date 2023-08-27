import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen72 extends StatelessWidget {
  const Screen72({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(left: 26, right: 26),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("          "),
                          Text(
                            'مركز المساعدة',
                            style: TextStyle(
                              fontSize: 17,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
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
                      Container(
                        width: 107,
                        height: 47,
                        child: Image.asset('images2/ostalogo1.png'),
                      )
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
               width: double.infinity,
               child: Container(
                 margin: EdgeInsets.only(left: 15,right: 15),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text(
                       'مرحبا مصطفي احمد',
                       style: TextStyle(
                         fontSize: 18,
                         color: const Color(0xff1ec1ad),
                         fontWeight: FontWeight.w500,
                         height: 1.7777777777777777,
                       ),
                       textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                       textAlign: TextAlign.right,
                       softWrap: false,
                     ),
                     Text(
                       'كيف بإمكاننا مساعدتك ؟',
                       style: TextStyle(
                         fontSize: 21,
                         color: const Color(0xff1d1d1b),
                         fontWeight: FontWeight.w500,
                         height: 1.5238095238095237,
                       ),
                       textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                       textAlign: TextAlign.right,
                       softWrap: false,
                     ),
                     SizedBox(
                       height: 10,
                     ),

                     buildContainertechnicalsupportqustion(right: 0,name: 'مقدم الخدمة يقوم بتغيير السعر'),
                     SizedBox(
                       height: 10,
                     ),

                     buildContainertechnicalsupportqustion(name: "المتجر يتأخر في التوصيل"),
                     SizedBox(
                       height: 10,
                     ),
                     buildContainertechnicalsupportqustion(right: 15,name: 'لا أستطيع إلغاء الطلب'),
                     SizedBox(
                       height: 10,
                     ),
                     buildContainertechnicalsupportqustion(right: 20,name: 'أواجة مشكلة أثناء الطلب'),
                     SizedBox(
                       height: 10,
                     ),
                     buildContainertechnicalsupportqustion(name: 'أنا بحاجة للمساعدة مع طلب حالي'),
                     SizedBox(
                       height: 10,
                     ),
                    buildContainertechnicalsupportqustion(right: 15,name: 'قمت بالطلب مرتين بالغلط'),
                     SizedBox(
                       height: 10,
                     ),

                   ],),
               ),
             )

            ],
          ),
          width: double.infinity,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }

  Widget buildContainertechnicalsupportqustion({
  required String name,
   double right =10,
}) {
    return Container(
                     width: double.infinity,
                     height: 46,
                     child: Container(
                         margin: EdgeInsets.only(left: 10,right: right),

                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Icon(Icons.arrow_back_ios,color: Color(0xff1C1B20),),
                             Text(
                               name,
                               style: TextStyle(
                                 fontSize: 15,
                                 color: const Color(0xff2370a2),
                                 fontWeight: FontWeight.w500,
                               ),
                               softWrap: false,
                             ),


                           ],

                         )),
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
                   );
  }
}
