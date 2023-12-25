
import 'dart:async';

import 'package:axisapp/models/app_helper.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:axisapp/widgets/boldText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget changeLangWidget(context,h,timer,onTap){
  return  InkWell(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.language_outlined,
          color: buttonColor,
        ),
        Padding(
          padding: EdgeInsets.only(top: h * .005),
          child: boldText(
            color: whiteColor,
            text: SharedPRefHelper().getLanguage ==
                'ar'
                ? 'English'
                : 'العربية',
            textAlign: TextAlign.center,
            fontSize: 15.sp,
          ),
        ),
      ],
    ),
  );
}