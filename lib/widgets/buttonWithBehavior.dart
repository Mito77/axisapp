import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/bases/check_connection.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/widgets/custom_button.dart';

Widget buttonWithBehavior(String text, action, bloc, context, validate, onTap,
    buttonColorGet, textColor,
    {double? textSize}) {
  return CustomButton(
    idleText: text,
    buttonColor: buttonColorGet,

    textSize: 18.sp,
    textColor: textColor,
    buttonBehaviour: bloc.buttonBehavior,
    failedBehaviour: bloc.failedBehaviour,
    validateStream: text == 'register' ? null : validate,
    onTap: () {
      switch (action) {
        case 'login':
          {
            onTap();
          }
          break;
        case 'homeSearch':
          {
            onTap();
          }
          break;
        case 'sendForget':
          {
            onTap();
          }
          break;  case 'sendCodeForget':
          {
            onTap();
          }
          break; case 'changePassword':
          {
            onTap();
          }
          break;
      }
    },
  );
}
