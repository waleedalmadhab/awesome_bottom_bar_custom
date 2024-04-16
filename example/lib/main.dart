import 'package:awesome_bottom_bar_custom/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_icons.dart';
import 'package:awesome_bottom_bar_custom/awesome_bottom_bar_custom.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int index=2;


changeIndex(int i){

  setState(() {
    index=i;
  });

}

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: '),
        ),
        bottomNavigationBar:
        BottomBarInspiredOutside(
          items: getItems(index),
          backgroundColor: AppColors.white,
          color: AppColors.hintFormColor,
          titleStyle: TextStyle(color: AppColors.hintFormColor,fontSize: 10),
          colorSelected: AppColors.gradientEndButtonColor,
          indexSelected: index,
          height: 55,
          onTap: (int index) =>changeIndex(index),
          animated: false,
          duration: const Duration(microseconds: 0),

          top:  -20,
          itemStyle: ItemStyle.circle,
          sizeInside: 50,
          chipStyle:  const ChipStyle(notchSmoothness: NotchSmoothness.sharpEdge,color: AppColors.white,background: AppColors.gradientEndButtonColor),


          //  chipStyle:const ChipStyle(convexBridge: true),
          // itemStyle: ItemStyle.circle,
          // animated: false,
        )

        ,
      ),

    );
  }


  List<TabItem>  getItems(int index){

    // print(index);


    return  [
      TabItem(
        icon:SvgPicture.asset(AppIcons.profile,color: index==0?AppColors.white:AppColors.hintFormColor ,theme: SvgTheme(currentColor: index==0?AppColors.mainTextColorBlue:AppColors.hintFormColor),),
        title: 'profile',
      ),
      TabItem(
        icon:SvgPicture.asset(AppIcons.appointments ,color: index==1?AppColors.white:AppColors.hintFormColor ,theme: SvgTheme(currentColor: index==1?AppColors.mainTextColorBlue:AppColors.hintFormColor),),
        title: 'appointments',
      ),
      TabItem(
        icon:SvgPicture.asset(AppIcons.home ,color: index==2?AppColors.white:AppColors.hintFormColor ,theme: SvgTheme(currentColor: index==1?AppColors.mainTextColorBlue:AppColors.hintFormColor),),
        title: 'Home',
      ),
      TabItem(
        icon:SvgPicture.asset(AppIcons.notifications ,color: index==3?AppColors.white:AppColors.hintFormColor ,theme: SvgTheme(currentColor: index==2?AppColors.mainTextColorBlue:AppColors.hintFormColor),),
        title:'notifications',
      ),
      TabItem(
        icon:SvgPicture.asset(AppIcons.settings ,color: index==4?AppColors.white:AppColors.hintFormColor ,theme: SvgTheme(currentColor: index==3?AppColors.mainTextColorBlue:AppColors.hintFormColor),),
        title: 'settings',
      ),
    ];


  }

}
