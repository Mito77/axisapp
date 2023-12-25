import 'package:custom_progress_button/custom_progress_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/generated/l10n.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/widgets/custom_progress.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rxdart/rxdart.dart';

  class CustomButton extends StatefulWidget {
    final BehaviorSubject<ButtonState>? buttonBehaviour;
    final BehaviorSubject<String>? failedBehaviour;
    final Stream<bool>? validateStream;
    final String idleText;
    final VoidCallback onTap;
    final bool enableClick;
    final bool isAllCaps;
    final bool enableBorder;
    final bool useGradient;
    final Color buttonColor;
    final String? loadingText;
    final double? textSize;
    final ButtonShapeEnum buttonShapeEnum;
    final Color textColor;
    final Color? inLineBackgroundColor;
    final double? elevation;
    final double radius;
    final double? customHeight;

    CustomButton(
        {required this.idleText,
        this.buttonBehaviour,
        this.failedBehaviour,
        required this.onTap,
        this.validateStream,
        this.isAllCaps = false,
        this.enableBorder = false,
        this.enableClick = true,
        this.useGradient = false,
        this.buttonColor = blackColor,
        this.loadingText,
        this.textSize,
        this.elevation,
        this.inLineBackgroundColor,
        this.customHeight,

          this.radius=5.0,
        this.buttonShapeEnum = ButtonShapeEnum.flat,
        this.textColor = whiteColor});

    @override
    _CustomButtonState createState() => _CustomButtonState();
  }

  class _CustomButtonState extends State<CustomButton> {
    @override
    Widget build(BuildContext context) {
      if (widget.buttonBehaviour == null)
        return _button(ButtonState.idle);
      else
        return _buttonStateStream;
    }

    StreamBuilder<ButtonState> get _buttonStateStream =>
        StreamBuilder<ButtonState>(
          builder: (context, snapshot) => widget.failedBehaviour == null
              ? _button(snapshot.data!)
              : failedStream(snapshot.data!),
          stream: widget.buttonBehaviour!,
          initialData: ButtonState.idle,
        );

    StreamBuilder<String> failedStream(ButtonState buttonState) =>
        StreamBuilder<String>(
          builder: (context, snapshot) => widget.validateStream == null
              ? _button(buttonState, failedText: snapshot.data!)
              : enableButton(buttonState, snapshot.data!),
          stream: widget.failedBehaviour!,
          initialData: S.of(context).noDataFound,
        );

    StreamBuilder<bool> enableButton(
            ButtonState buttonState, String failedText) =>
        StreamBuilder<bool>(
          builder: (context, snapshot) => _button(buttonState,
              enable: snapshot.data == null ? false : snapshot.data,
              failedText: failedText),
          initialData: false,
          stream: widget.validateStream!,
        );

    Widget _button(ButtonState buttonState,
            {String failedText = '', bool? enable}) =>
        CustomProgressButton(
          stateWidgets: {
            ButtonState.idle: _idleText,
            ButtonState.fail: _failText(failedText),
            ButtonState.loading: _loadingText,
            ButtonState.success: _successText,
          },
          stateColors: {
            ButtonState.idle: enable == null
                ? widget.buttonColor
                : enable
                    ? widget.buttonColor
                    :widget.buttonColor.withOpacity(.3),
            ButtonState.fail: blackColor,
            ButtonState.loading: widget.buttonColor,
            ButtonState.success: widget.buttonColor,
          },
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            widget.onTap();
          },
          progressWidget:SpinKitThreeInOut(
            color: whiteColor,
             size: 30.sp,
          ),

          elevation: widget.elevation == null ? 5.r : widget.elevation!,
          progressIndicatorSize:
              widget.customHeight != null ? widget.customHeight! : 47.h,
          height: widget.customHeight != null ? widget.customHeight! : 47.h,
          enable: widget.enableClick,
          buttonShapeEnum: widget.buttonShapeEnum,
          progressAlignment: MainAxisAlignment.center,
          radius: widget.radius,
          state: buttonState,
     /*     shapeDecoration: widget.enableBorder
              ? ShapeDecoration(
                  color: widget.buttonColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: accentColor, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                )
              : null,*/
          inLineBackgroundColor: widget.inLineBackgroundColor ?? whiteColor,
        );

    Widget get _idleText => CustomText(
          text:
              widget.isAllCaps ? widget.idleText.toUpperCase() : widget.idleText,
          customTextStyle: BoldStyle(
              color: widget.textColor,
              fontSize: widget.textSize == null ? 18.sp : widget.textSize!),
        );

    Widget _failText(String text) => CustomText(
          text: widget.isAllCaps
              ? _failedString(text).toUpperCase()
              : _failedString(text),
          customTextStyle: BoldStyle(
              color: widget.textColor,
              fontSize: widget.textSize == null ? 18.sp : widget.textSize!),
        );

    String _failedString(String failedText) {
      if (failedText.isEmpty) return S.of(context).logout;
      return failedText;
    }

    Widget get _loadingText => CustomText(
        text: widget.isAllCaps ? loadingString.toUpperCase() : loadingString,
        customTextStyle: BoldStyle(
            color: widget.textColor,
            fontSize: widget.textSize == null ? 18.sp : widget.textSize!));

    String get loadingString =>
        widget.loadingText == null ? S.of(context).loading : widget.loadingText!;

    Widget get _successText => CustomText(
        text: widget.isAllCaps
            ? S.of(context).success.toUpperCase()
            : S.of(context).success,
        customTextStyle: BoldStyle(
            color: widget.textColor,
            fontSize: widget.textSize == null ? 18.sp : widget.textSize!));
  }
