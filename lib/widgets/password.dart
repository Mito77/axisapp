import 'package:flutter/material.dart';
import 'package:axisapp/bases/validator.dart';
import 'package:axisapp/generated/l10n.dart';
import 'package:axisapp/widgets/custom_text_form_filed.dart';
final Validator validator = Validator();

StreamBuilder<bool> passwordTextForm(_bloc,text,check) {
  return StreamBuilder<bool>(
    builder: (context, snapshot) => passwordStream(snapshot.data!, _bloc,text,check),
    initialData: false,
    stream: _bloc.passwordVisibilityBehaviour.stream,
  );
}

StreamBuilder<String> passwordStream(bool showPassword, _bloc,text,check) =>
    StreamBuilder<String>(
      builder: (context, snapshot) => CustomTextFormFiled(
        onChanged: (value) {
          if(text==S.current.password)
          _bloc.updatePassword(value);
          else
            _bloc.updateConfirmPassword(value);

          if(check)
            {
              _bloc.checkPassword(value);}
        },
        updatePasswordToggle: (value) {
          _bloc.passwordVisibilityBehaviour.sink.add(value);
        },
        textCapitalization: TextCapitalization.none,
        isPassword: true,
        passwordVisibility: showPassword,
        keyboardType: TextInputType.text,
        validator: (value) {
          if(text==S.current.password)
            return validator.passwordValidator(context).call(value);
          else
            return  validator.isMatchValid(value, _bloc.getPassword());
        },

        textInputAction: TextInputAction.done,
        labelText: text,
      ),
      stream: _bloc.password,
      initialData: '',
    );
