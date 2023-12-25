import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/widgets/custom_button.dart';

Widget buttonWithOnlyAction(String text, action, isBorder, context, fontSize,
   onTap, {double? btnHeight}) {
  return CustomButton(
    idleText: text,
     buttonColor:loginText,
    textColor: textColor,
    onTap: onTap,
    textSize: fontSize,
  );
}
