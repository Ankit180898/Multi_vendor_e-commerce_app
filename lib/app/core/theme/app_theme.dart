import 'package:flutter/material.dart';

import '../values/app_color.dart';

//Light Color
ColorScheme lightColor = ColorScheme(
    brightness: Brightness.light,
    primary: AppColor.lightPrimaryColor,
    onPrimary: AppColor.blackColor,
    secondary: AppColor.lightSecondaryColor,
    onSecondary: AppColor.blackColor,
    error: AppColor.darkRedColor,
    onError: AppColor.blackColor,
    background: AppColor.lightPrimaryBgColor,
    onBackground: AppColor.blackColor,
    surface: AppColor.lightSecondaryBgColor,
    onSurface: AppColor.blackColor);

//Dark Color
ColorScheme darkColor = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColor.darkPrimaryColor,
    onPrimary: AppColor.whiteColor,
    secondary: AppColor.darkSecondaryColor,
    onSecondary: AppColor.whiteColor,
    error: AppColor.darkRedColor,
    onError: AppColor.blackColor,
    background: AppColor.darkPrimaryBgColor,
    onBackground: AppColor.blackColor,
    surface: AppColor.darkSecondaryBgColor,
    onSurface: AppColor.whiteColor);

final Color _lightFocusColor=Colors.black.withOpacity(0.12);
final Color _darkFocusColor=Colors.white.withOpacity(0.12);

final ThemeData lightThemeData=themeData(lightColor,_lightFocusColor);
final ThemeData darkThemeData=themeData(darkColor,_darkFocusColor);

ThemeData themeData(ColorScheme colorScheme,Color focusColor){
  return ThemeData(

  );
}