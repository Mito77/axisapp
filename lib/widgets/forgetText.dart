import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';

Widget forgetText(text) {
  return CustomText(
      text: text,
      textAlign: TextAlign.left,
      customTextStyle: MediumStyle(fontSize: 13.sp, color: greyTextForm));
}