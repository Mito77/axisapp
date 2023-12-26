import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appBarCustom(w, h, context,title,route,showBack) {
  return Container(
    width: w,
    height: h*.1,
    color: accentGreen,
    child:Padding(
      padding:   EdgeInsets.only(
          left: w*.06,
          right: w*.06,
          top: h*.03
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: CustomText(
              customTextStyle: BoldStyle(
                  fontSize: 20.sp, color: whiteColor),
              text: title,
            ),
          ),
          Spacer(),

          showBack? InkWell(
              onTap: route,
              child: Icon(
                SharedPRefHelper().getLanguage=='ar'?
                Icons.arrow_forward_sharp:
                Icons.arrow_forward_sharp,color: whiteColor,)):Container(),

        ],
      ),
    ),
  );
}