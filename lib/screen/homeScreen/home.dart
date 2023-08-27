import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/cubit.dart';
import 'package:osta/block/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OstaCubit,OstaState>(builder: (context,state){
      OstaCubit cubit = BlocProvider.of(context);
      return WillPopScope(
        onWillPop: ()async{

          print("No");
          return await false;
        },
        child: Scaffold(
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.fixed,

            height: 65,
            curveSize: 0,
              // top: -150,
            backgroundColor: Colors.white,

            activeColor: Color(0xff3d90b4),
            color:            Color(0xff7E7E7E),

            items: [
              TabItem(icon:  ImageIcon(AssetImage("images3/card-list.png"),color:cubit.index==0? Color(0xff3d90b4) :Color(0xff7E7E7E),), title: 'المزيد',),
              TabItem(icon: Icons.favorite_border_outlined, title: 'المفضلة'),
              TabItem(icon:      Image.asset("images3/logoCenter.png",width: 100,height: 100,)    , title: 'الرئيسية'),
              TabItem(icon: ImageIcon(AssetImage("images3/calendar-settings.png"),color: cubit.index==3? Color(0xff3d90b4) :Color(0xff7E7E7E) ,), title: 'طلباتي  '),
              TabItem(icon: Icons.account_circle_outlined, title: 'حسابي  '),
            ],
            initialActiveIndex: cubit.index,//optional, default as 0
            onTap: (int i){
              cubit.changeIndexBottomNavBar(i);


            },
          ),
          body: OstaCubit.getCubit(context).bodyScreen[OstaCubit.getCubit(context).index],
    ),
      );},listener: (context,state){},);
  }
}


