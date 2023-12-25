import 'package:axisapp/utilities/CustomText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/image_paths.dart';
import 'package:image_loader/image_helper.dart';

class CustomTextFormFiled extends StatelessWidget {
  final bool enableInteractiveSelection;
  final Color? borderColor;
  final Color? labelColor;
  final VoidCallback? onTap;
  final TextEditingController? textEditingController;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final Widget? suffixIcon, prefixIcon;
  final Key? key;
  final Function(bool isDenes)? updatePasswordToggle;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final bool enable;
  final bool expanded;
  final bool isPassword;
  final bool passwordVisibility;
  final String labelText;
  final bool isLabel;
  final bool isDense;
  final bool isMobile;
  final bool readOnly;
  final ValueChanged<String>? onFieldSubmitted;
  final EdgeInsets? customContentPadding;
  final bool usedInAppBar;
  final int? minLines, maxLines;
  final bool hasContentPadding;
  final FocusNode? focusNode;
  final bool autoFocus;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLength;
  final bool showCounter;
  final bool enableBorder;
  final bool isPrefix;
  final String? initialValue;
  final TextCapitalization? textCapitalization;
  final bool enableSuggestions;

  CustomTextFormFiled(
      {required this.labelText,
      this.enableInteractiveSelection = true,
      this.onTap,
      this.textEditingController,
      this.onChanged,
      this.errorText,
      this.labelColor,
      this.prefixIcon,
      this.suffixIcon,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.enable = true,
      this.expanded = false,
      this.isPassword = false,
      this.isPrefix = false,
      this.isLabel = false,
      this.isDense = false,
      this.isMobile = false,
      this.passwordVisibility = false,
      this.readOnly = false,
      this.updatePasswordToggle,
      this.customContentPadding,
      this.onFieldSubmitted,
      this.validator,
      this.usedInAppBar = false,
      this.minLines,
      this.hasContentPadding = true,
      this.focusNode,
      this.autoFocus = false,
      this.inputFormatter,
      this.borderColor,
      this.showCounter = true,
      this.maxLength,
      this.enableBorder = true,
      this.maxLines,
      this.initialValue,
      this.textCapitalization,
      this.enableSuggestions = false,
      this.key,
      required TextInputType keyboardType});

  @override
  Widget build(BuildContext context) => _textFormFiled;

  Widget get _textFormFiled => TextFormField(
        onTap: onTap,
        style: _defaultTextStyle,
        initialValue: initialValue,
        textInputAction: textInputAction,
        cursorColor:
            labelColor == null ? greyColor.withOpacity(.54) : labelColor!,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: textCapitalization == null
            ? TextCapitalization.sentences
            : textCapitalization!,
        showCursor: !readOnly,
        controller: textEditingController,
        keyboardType: textInputType,
        enabled: enable,


        enableInteractiveSelection: enableInteractiveSelection,
        expands: expanded,
        autofocus: autoFocus,
        maxLength: maxLength,
        inputFormatters: inputFormatter,
        maxLines: isPassword
            ? 1
            : passwordVisibility
                ? 1
                : maxLines,
        validator: (value) => validator == null ? null : validator!(value),
        obscureText: passwordVisibility,
        readOnly: readOnly,
        onChanged: (value) => onChanged != null ? onChanged!(value) : null,
        minLines: isPassword ? 1 : minLines,
        enableSuggestions: enableSuggestions,
        decoration: _inputDecoration,
        toolbarOptions: enable
            ? const ToolbarOptions(
                copy: true, cut: true, paste: true, selectAll: true)
            : const ToolbarOptions(
                selectAll: false, paste: false, cut: false, copy: false),
        selectionControls: CupertinoTextSelectionControls(),
        // onFieldSubmitted: (value) => onFieldSubmitted!(value),
      );

  InputDecoration get _inputDecoration => InputDecoration(
        errorStyle: _errorTextStyle,
        errorMaxLines: 4,
        contentPadding: hasContentPadding
            ? customContentPadding ??
                EdgeInsets.only(
                    left: 14.w, right: 14.w, top: 14.h, bottom: 14.h)
            : null,
        errorText: errorText,
        enabled: enable,
        counterStyle: _counterTextStyle,
        hintStyle: _hintTextStyle,
        helperStyle: _counterTextStyle,

        labelStyle: _labelTextStyle,
        isDense: isDense,
        fillColor: Colors.white,
        filled: true,

        label: Container(
            color:whiteColor,
            padding: EdgeInsets.symmetric(
              vertical: 4.h,
              horizontal: 6.w
            ),
            child: CustomText(
                text: !isLabel ? '  ${labelText}' : null ?? '',
                textAlign: TextAlign.start,
                customTextStyle: BoldStyle(fontSize: 16.sp, color: darkBlue))),
        // fillColor: usedInAppBar ? Colors.white : Colors.transparent,
        // filled: usedInAppBar,
        suffixIcon: isPassword ? _passwordIcon : suffixIcon,
        prefixIcon: prefixIcon,
        hintText: isLabel ? labelText : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: greyColor, width: 2.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
          //  when the TextFormField in focused
        ),
        border: UnderlineInputBorder(),
        errorBorder: _getBorder(Colors.red),

        focusedErrorBorder: _getBorder(Colors.red),
      );

  Widget get _passwordIcon => IconButton(
        icon: passwordVisibility
            ? loadVisibilityIcon(passwordIcon)
            : loadVisibilityIcon(passwordIcon2),
        onPressed: () {
          updatePasswordToggle!(!passwordVisibility);
        },
      );

  Widget loadVisibilityIcon(String path) => ImageHelper(
        image: path,
        imageType: ImageType.asset,
        boxFit: BoxFit.contain,
        width: 24.w,
        height: 24.h,
      );

  TextStyle get _counterTextStyle =>
      BoldStyle(color: usedInAppBar ? whiteColor : whiteColor, fontSize: 15.sp)
          .getStyle();

  TextStyle get _errorTextStyle =>
      BoldStyle(color: Colors.red, fontSize: 16).getStyle();

  TextStyle get _hintTextStyle =>
      BoldStyle(color: usedInAppBar ? blackColor : questColor, fontSize: 13.sp)
          .getStyle();

  TextStyle get _defaultTextStyle =>
      BoldStyle(color: blackColor, fontSize: 13.sp).getStyle();

  TextStyle get _labelTextStyle => BoldStyle(
        color: buttonColor,
        fontSize: 16.sp,
      ).getStyle();

  InputBorder? _getBorder(Color color) => usedInAppBar
      ? UnderlineInputBorder(borderSide: BorderSide(color: color, width: 1.0.w))
      : getOutLineBorder(color);

  InputBorder getOutLineBorder(Color color) => OutlineInputBorder(
      borderRadius: isMobile
          ? BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
          : BorderRadius.circular(5.0),
      borderSide: BorderSide(
          color: borderColor == null ? color : borderColor!, width: 1.0));
}
