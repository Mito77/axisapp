import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';

Widget descriptionText(text,fontSize) {
  return CustomText(
      text: text,
      textAlign: TextAlign.center,
      customTextStyle: MediumStyle(fontSize: fontSize, color: accentColor));
}
