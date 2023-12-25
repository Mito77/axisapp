
import 'package:axisapp/generated/l10n.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameDialog {
  final Function(bool) onPressed;
  bool isCancel = false;
  final body;

  NameDialog({required this.onPressed, @required this.body, required this.isCancel});

  showAlertDialog(BuildContext context) {

    Widget cancelButton =TextButton(
      style: TextButton.styleFrom(
       ),
      child: CustomText(
        text: S.current.cancel,
        customTextStyle: BoldStyle(
          fontSize: 15.sp,
          color:redColor,
        ),
      ),
      onPressed: () {
        if (isCancel)
          return onPressed(false);
        else {
          Navigator.pop(context);
        }
        return;
      },
    );
    Widget continueButton = TextButton(
      style: TextButton.styleFrom(
       ),
      child: CustomText(
        text: S.current.ok,
        customTextStyle: BoldStyle(
          fontSize: 15.sp,
          color: Colors.black,
        ),
      ),
      onPressed: () => onPressed(true),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: CustomText(
        text: body,
        maxLines: 3,
        textAlign: TextAlign.center,
        customTextStyle: BoldStyle(
          fontSize: 18.sp,
          color: loginText,
        ),
      ),
      actions: [
        isCancel ? continueButton : Container(),
        cancelButton,
      ],
    );


    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
