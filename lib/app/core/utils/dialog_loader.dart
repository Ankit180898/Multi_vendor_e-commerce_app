import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../values/app_color.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class DialogLoader{
  static void showDialog(){
    Get.dialog(
     WillPopScope(onWillPop: ()=>Future.value(false), child:
         Center(
           child: SpinKitThreeBounce(
             color: Get.isDarkMode?AppColor.yellowColor:AppColor.deepPurpleAccentColor,
             size: 50
             ,
           ),
         ),

     ),
      barrierDismissible: false,
      barrierColor: Theme.of(Get.context!).scaffoldBackgroundColor.withOpacity(0.3),
      useSafeArea: true
    );
  }

  static void cancelDialog(){
    Get.back();
  }
}