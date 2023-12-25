
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';

Widget descriptionOfferText(text,size) {
  return CustomText(
      text: text,
      textAlign: TextAlign.start,
      customTextStyle: RegularStyle(fontSize: size, color: greyTextForm));
}