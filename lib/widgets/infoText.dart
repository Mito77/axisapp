import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/view_helper.dart';

Widget infoText(text, text2, context, action) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      greyText(text2, action),
    ],
  );
}

Widget accentText({text, textAlign, fontSize, color, onTap, textDecoration,bold}) {
  return InkWell(
    child: CustomText(
        text: '  ${text}',
        textAlign: textAlign,
        customTextStyle: bold?BoldStyle(
          fontSize: fontSize,
          color: color,
          textDecoration: textDecoration ?? TextDecoration.none,
        ):RegularStyle(
    fontSize: fontSize,
    color: color,
    textDecoration: textDecoration ?? TextDecoration.none,
  )),
    onTap: onTap,
  );
}

Widget greyText(text, action) {
  return CustomText(
      text: text,
      textAlign: TextAlign.center,
      customTextStyle: MediumStyle(
          fontSize: 14.sp,
          color: action == 'resendCode' ? blackColor : onBoardingColor));
}
