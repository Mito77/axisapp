
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:axisapp/enum/shared_pref_enum.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/app_theme.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:provider/provider.dart';

import 'package:simple_shared_pref/simple_shared_pref.dart';
class AppHelper with ChangeNotifier {
  bool isAppConfigBefore = false;
  static final AppHelper _appModel = AppHelper._internal();
  late SystemUiOverlayStyle systemUiOverlayStyle;

  AppHelper._internal();

  factory AppHelper() {
    return _appModel;
  }

  String get locale => Constant.appLanguage;

  ThemeMode get themeMode => ThemeMode.light;

  get backgroundColor {
    return whiteColor;
  }

  Future<void> init() async {
    if (!isAppConfigBefore) {
      // await Firebase.initializeApp();
     await SimpleSharedPref().init();
      // await FirebaseInstallation().init();
      await _initAppLanguage();
      await _initAppThemeMode();
    //  await _initAppNotification();
      systemUiOverlayStyle = AppTheme().getSystemUiOverLayStyle();
    }
    return Future.value();
  }

  Future<void> updateSystemUiOverLayStyle(Color color, Brightness brightness) {
    systemUiOverlayStyle = AppTheme()
        .getSystemUiOverLayStyle(color: whiteColor, brightness: brightness);
    notifyListeners();
    return Future.value();
  }

  Future<void> _initAppLanguage() async {
    if (!SimpleSharedPref().containsKey( SharedPrefEnum.language.toString()))
      await SimpleSharedPref()
          .setValue(value: 'ar', key: SharedPrefEnum.language.toString());
    Constant.appLanguage =
        SimpleSharedPref().getValue(key: SharedPrefEnum.language.toString())!;
    return Future.value();
  }


  Future<void> _initAppThemeMode() async {
    if (!SimpleSharedPref().containsKey(  SharedPrefEnum.isLight.toString()))
      await SimpleSharedPref()
          .setValue(key: SharedPrefEnum.isLight.toString(), value: true);
    return Future.value();
  }

  Future<bool> changeLanguage(String language, BuildContext context) async {
    try {
      Constant.appLanguage = language;
      await SimpleSharedPref()
          .setValue(value: language, key: SharedPrefEnum.language.toString());
      notifyListeners();
      return true;
    } catch (err) {
      return false;
    }
  }


    doChangeLanguage(String language, BuildContext context) {
    Provider.of<AppHelper>(context, listen: false)
        .changeLanguage(language, context);
  }
}
