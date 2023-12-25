

import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:axisapp/widgets/boldText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget labelWidget(title, text, icon,h,w) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        color: whiteColor,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: w * .02, vertical: h * .02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: h * .05,
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: SharedPRefHelper().getLanguage == 'ar'
                          ? h * .0
                          : h * .0),
                  child: Icon(
                    icon,
                    color: buttonColor,
                    size: 27.sp,
                  ),
                ),
              ),
              SizedBox(
                width: w * .03,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: boldText(
                      color: blackColor,
                      text: '${title}',
                      textAlign: TextAlign.start,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: h * .005,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0),
                    child: Container(
                        child: CustomText(
                          text: '${text}',
                          textAlign: TextAlign.start,
                          customTextStyle:
                          BoldStyle(color: darkBlue, fontSize: 16.sp),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        height: h * .002,
        color: Colors.grey[400],
      )
    ],
  );
}