import 'package:axisapp/generated/l10n.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:axisapp/bases/validator.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/widgets/custom_text_form_filed.dart';

StreamBuilder<String> textForm(bloc, text, actionCase, color, focusNode,
    {initialVal, length}) {
  final Validator _validator = Validator();
  return StreamBuilder(
    builder: (context, snapshot) => CustomTextFormFiled(
      labelText: text,
      textInputAction: TextInputAction.next,
      initialValue: initialVal,
      maxLength: length,
      labelColor: buttonColor,
      focusNode: focusNode,
      onChanged: (value) {
        switch (actionCase) {
          case 'userNameS':
            {
              bloc.updateUserNameS(value);
            }
            break;
          case 'emailS':
            {
              print('value$value');
              bloc.updateEmailS(value);
            }
            break;
          case 'email':
            {
              bloc.updateEmail(value);
            }
            break;
          case 'userName':
            {
              bloc.updateUserName(value);
            }
            break;
          case 'firstName':
            {
              bloc.updateFirstName(value);
            }
            break;
          case 'lastName':
            {
              bloc.updateLastName(value);
            }
            break;
          case 'surname':
            {
              bloc.updateSurname(value);
            }
            break;
          case 'identify':
            {
              bloc.updateIdentify(value);
            }
            break;
          case 'mobileNumber':
            {
              bloc.updateMobileNumber(value);
            }
            break;
          case 'code':
            {
              bloc.updateCode(value);
            }
            break;
          case 'loginEmail':
            {
              SharedPRefHelper().setLoginNumber(value);
              bloc.updateEmail(value);
            }
            break;
          case 'fullName':
            {
              bloc.updateFullName(value);
            }
            break;
          case 'mobile':
            {
              bloc.updateMobile(value);
            }
            break;
          case 'emailForget':
            {
              bloc.updateResetPassword(value);
            }
            break;
          case 'codeReset':
            {
              bloc.updateCode(value);
            }
            break;
          case 'newPassword':
            {
              bloc.updateNewPassword(value);
            }
            break;
        }
      },
      validator: (value) {
        if (actionCase == 'email' || actionCase == 'emailForget')
          return _validator.emailValidator(context).call(value);
        if (actionCase == 'identify' || text == S.current.nationalID)
          return _validator.nationalValidator(context).call(value);
      },
      isMobile: actionCase == 'mobile' ? true : false,
      borderColor: greyBorder,
      textCapitalization: TextCapitalization.none,
      keyboardType: TextInputType.text,
    ),
    stream: null,
  );
}
