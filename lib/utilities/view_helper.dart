
import 'package:axisapp/view/home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/widgets/custom_bottom_sheet_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewHelper {
  final BuildContext context;
  final bool fullScreen;

  ViewHelper(this.context, {this.fullScreen = false});

  Future<dynamic> pushScreen(dynamic widget, {bool hasBackStack = false}) {
    if (!hasBackStack)
      return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
    else
      return Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
  }


  void showCustomBottomSheetFullScreen(Widget child,
      {Function(dynamic result)? onUpdate}) {
    showAnimatedDialog(
            context: context,
            builder: (context) => CustomBottomSheetDialog(
                  child: child,
                  fullScreen: fullScreen,
                ),
            curve: Curves.fastOutSlowIn,
            alignment: Alignment.center,
            axis: Axis.vertical,
            animationType: DialogTransitionType.slideFromBottomFade,
            duration: Duration(milliseconds: 500),
            barrierDismissible: false,
            barrierColor: Colors.transparent)
        .then((value) {
      if (onUpdate != null) onUpdate(value);
    });
  }


  void openHomePageWidget() {
    pushScreen(homePageWidget());
  }

}
