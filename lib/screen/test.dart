import 'package:flutter/material.dart';
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var SizeConfig;
    return Scaffold(
appBar:      AppBar(
  toolbarHeight:MediaQuery.of(context).size.height/4,
  leading: Container(),
  shape: RoundedRectangleBorder(
    borderRadius: new BorderRadius.vertical(
      bottom: new Radius.elliptical(SizeConfig.screenWidth, 56.0),
    ),
  ),
),

      body: Column(
        children: [

        ],
      ),
    );
  }
}
