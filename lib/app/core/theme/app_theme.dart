import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
    colorScheme: colorScheme,
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.syne(
        fontSize: 16,
        color: AppColor.whiteColor,
        fontWeight: FontWeight.bold
      ),
      color: colorScheme.brightness==Brightness.light?colorScheme.primary:darkColor.surface,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: colorScheme.brightness,
        systemNavigationBarColor: colorScheme.brightness==Brightness.light?colorScheme.primary:darkColor.surface,

      ),
      iconTheme: IconThemeData(color: AppColor.whiteColor)
    ),
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
    canvasColor: colorScheme.brightness==Brightness.light?AppColor.lightSecondaryBgColor:AppColor.darkSecondaryBgColor,
    scaffoldBackgroundColor: colorScheme.background,
    highlightColor: Colors.transparent,
    focusColor: focusColor,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.syne(
        fontSize: 14,
        color: colorScheme.brightness==Brightness.light?Color(0x89000000):Color(0x89FFFFFF),
        
      ),
      titleMedium: GoogleFonts.syne(
        fontSize: 12,
        color: colorScheme.brightness==Brightness.light?Color(0x89000000):Color(0x89FFFFFF),

      ),
    ),
    dividerColor: colorScheme.brightness==Brightness.light?AppColor.greyColor.withOpacity(0.3):AppColor.greyColor.withOpacity(0.3)
  );
}