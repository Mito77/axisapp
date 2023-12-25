import 'package:axisapp/generated/l10n.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget skipWidget(context) {
  return InkWell(
    onTap: () {
    },
    child: CustomText(
      customTextStyle: BoldStyle(
          textDecoration: TextDecoration.underline,
          fontSize: 16.sp,
          color: buttonColor),
      text: '${S.current.skip}',
    ),
  );
}
