import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bases/base_state.dart';
import 'CustomText.dart';
import 'CustomTextStyle.dart';
import 'app_colors.dart';

Widget boldText(text, {double? textSize}) => CustomText(
    text: text,
    textAlign: TextAlign.center,
    customTextStyle: BoldStyle(
        fontSize: textSize == null ? 16.sp : textSize, color: blackColor));

Widget SemiBoldText(text, {double? textSize}) => CustomText(
    text: text,
    textAlign: TextAlign.center,
    customTextStyle: SemiBoldStyle(
        fontSize: textSize == null ? 16.sp : textSize, color: blackColor));

Widget MediumText(text, {double? textSize}) => CustomText(
    text: text,
    textAlign: TextAlign.center,
    customTextStyle: MediumStyle(
        fontSize: textSize == null ? 16.sp : textSize, color: blackColor));
