import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:axisapp/generated/l10n.dart';

final MultiValidator emptyValid = MultiValidator([
  RequiredValidator(errorText: S.current.required),
]);

final MultiValidator national = MultiValidator([
  RequiredValidator(errorText: S.current.fillRequired),
]);

final MultiValidator phone = MultiValidator([
  RequiredValidator(errorText: S.current.fillRequired),
]);
final MultiValidator passwordValid = MultiValidator([
  RequiredValidator(errorText: S.current.passwordRequired),
  MinLengthValidator(8, errorText: S.current.invalidPassword),
]);

final MultiValidator emailValid = MultiValidator([
  RequiredValidator(errorText: S.current.emailRequired),
  EmailValidator(errorText: S.current.invalidEmail)
]);

final MatchValidator matchValid =
    MatchValidator(errorText: 'Not Match Password');

class Validator {
  MultiValidator emailValidator(BuildContext context) => MultiValidator([
        RequiredValidator(errorText: S.of(context).emailRequired),
        EmailValidator(errorText: S.of(context).invalidEmail)
      ]);

  MultiValidator emptyValidator(BuildContext context) => MultiValidator([
        RequiredValidator(errorText: S.of(context).required),
      ]);

  MultiValidator nationalValidator(BuildContext context) => MultiValidator([
        RequiredValidator(errorText: S.of(context).fillRequired),
        MinLengthValidator(14, errorText: S.of(context).fillRequired),
      PatternValidator(r"^[23](?:[0-9]{2}(?:(?:(?:0[13578]|1[02])(?:0[1-9]|[12][0-9]|3[01]))|(?:(?:0[469]|11)(?:0[1-9]|[12][0-9]|30))|(?:02(?:0[1-9]|1[0-9]|2[0-8])))|(?:(?:04|08|[2468][048]|[13579][26]|(?<=3)00)0229))(?:0[1-4]|[12][1-9]|3[1-5]|88)[0-9]{4}[1-9]$", errorText: S.of(context).fillRequired)
      ]);
  MultiValidator phoneValidator(BuildContext context) => MultiValidator([
    RequiredValidator(errorText: S.of(context).fillRequired),
    MinLengthValidator(11, errorText: S.of(context).fillRequired),
    PatternValidator(r"^(\+201|01|00201)[0-2,5]{1}[0-9]{8}$", errorText: S.of(context).fillRequired)

  ]);
  MultiValidator passwordValidator(BuildContext context) => MultiValidator([
        RequiredValidator(errorText: S.of(context).passwordRequired),
        MinLengthValidator(8, errorText: S.of(context).invalidPassword),
      ]);

  MatchValidator matchValidator(BuildContext context) =>
      MatchValidator(errorText: 'Not Match Password');

  bool notEmptyValid(String? value) => emptyValid.isValid(value);

  bool isPasswordValid(String? value) => passwordValid.isValid(value);

  bool isEmailValid(String? value) => emailValid.isValid(value);
  bool isNationalValid(String? value) => national.isValid(value);
  bool phoneValid(String? value) => phone.isValid(value);

  isMatchValid(String? value1, String? value2) =>
      matchValid.validateMatch(value1!, value2!);
}
