 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';

Widget get countryPicker => Container(
      decoration: BoxDecoration(
        border: Border.all(color: greyBorder),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      alignment: Alignment.center,
      height: 46.h,
      child: CustomText(
          text: '+20',
          textAlign: TextAlign.center,
          customTextStyle: MediumStyle(fontSize: 16.sp, color: blackColor)),
    );
