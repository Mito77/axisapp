import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:axisapp/utilities/app_colors.dart';
 
class AppTheme {
  static final AppTheme _appTheme = AppTheme.internal();

  factory AppTheme() {
    return _appTheme;
  }

  AppTheme.internal();

  ThemeData getTheme(context) => lightTheme;

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.dark,
        // textTheme: setAppTextTheme(),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,
        disabledColor: greyColor,
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
        canvasColor: Colors.transparent,
        buttonTheme: _buttonTheme,
        shadowColor: whiteColor,
        snackBarTheme: _snackBarThemeData,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  SnackBarThemeData get _snackBarThemeData => const SnackBarThemeData(
        actionTextColor: whiteColor,
        backgroundColor: blackColor,
        behavior: SnackBarBehavior.floating,
        elevation: 5.0,
        // contentTextStyle:
        //   RegularStyle(fontSize: 15.0, color: Styles.DARK_PRIMARY).getStyle()
      );
 
  SystemUiOverlayStyle getSystemUiOverLayStyle(
      {Color color = accentColor,
      Brightness brightness = Brightness.dark}) {
    return SystemUiOverlayStyle(
        statusBarColor: color,
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: brightness,
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
        systemNavigationBarDividerColor: color);
  }

  ButtonThemeData get _buttonTheme => ButtonThemeData(
        shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(6.0)),
      );
}
