import 'package:custom_progress_button/custom_progress_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/generated/l10n.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/widgets/custom_dialog.dart';
import 'package:axisapp/widgets/custom_progress.dart';
import 'package:rxdart/rxdart.dart';

class ResponseHandLer {
  dynamic checkResponseState(
    ApiState apiState,
    BuildContext context, {
    double loaderSize = 50,
    Color loaderColor = accentColor,
    double noDataFoundSize = 18,
    String? noDataFoundText,
    bool? noProduct,
    Widget? noProductWidget,
    bool isUseExpanded = false,
    Widget? onSuccess,
    Widget? idleWidget,
  }) {
    if (apiState is LoadingState)
      return isUseExpanded
          ? Container()
          : getCustomProgress(loaderColor: loaderColor, loaderSize: loaderSize);
    else if (apiState is SuccessState)
      return onSuccess;
    else if (apiState is FailedState)
      return getNoDataFound(context,
          textColor: loaderColor,
          noDataFoundText: noDataFoundText,
          noProduct: noProduct ?? false,
          noProductWidget: noProductWidget,
          isUseExpanded: isUseExpanded);
    else if (apiState is ErrorState)
      return Center(
        child: CustomText(
          text:  'Connection Time out',
          customTextStyle: BoldStyle(fontSize: 20.sp, color: accentColor),
        ),
      );
    else if (apiState is IdleState)
      return idleWidget;
    else
      return isUseExpanded
          ? getExpanded(getCustomProgress(
              loaderColor: loaderColor, loaderSize: loaderSize))
          : getCustomProgress(loaderColor: loaderColor, loaderSize: loaderSize);
  }

  void checkResponseStateForButton(ApiState apiState, BuildContext context,
      {VoidCallback? onSuccess,
      required BehaviorSubject<String> failedBehaviour,
      required BehaviorSubject<ButtonState> buttonBehaviour,bool again=false}) {
    if (apiState is LoadingState)
      buttonBehaviour.sink.add(ButtonState.loading);
    else if (apiState is SuccessState) {
      buttonBehaviour.sink.add(ButtonState.success);
      onSuccess!();
      if(again)
        {
          buttonBehaviour.sink.add(ButtonState.idle);
        }
    } else if (apiState is ErrorState) {
      buttonBehaviour.sink.add(ButtonState.idle);
      showErrorDialog(apiState.message, context);
      // failedBehaviour.sink.add(apiState.message);
    } else {
      buttonBehaviour.sink.add(ButtonState.idle);
      showErrorDialog(apiState.message, context);
      // failedBehaviour.sink.add(apiState.message);
    }
  }

  void showErrorDialog(String message, BuildContext context,
      {String? errorMessage}) {
    ViewHelper(context).showCustomBottomSheetFullScreen(CustomAppDialog(
      headerString: errorMessage != null ? errorMessage : S.of(context).error,
      headerTextColor: redColor,
      descriptionString: message,
      positiveClick: () {},
      positiveString: S.of(context).errorButton,
      negativeString: '',
    ));
  }

  Widget getCustomProgress({
    double loaderSize = 50,
    Color loaderColor = accentGreen,
  }) =>
      CustomProgress(
        color: loaderColor,
        size: loaderSize,
      );

  Widget getExpanded(Widget child) => Expanded(child: child);

  Widget getErrorText(String error) {
    return Container(
        color: Colors.red,
        child: Center(
          child: Expanded(
            child: CustomText(
              text: error,
              customTextStyle: RegularStyle(color: redColor, fontSize: 15.sp),
            ),
          ),
        ));
  }

  getNoDataFound(BuildContext context,
      {Color textColor = accentColor,
      String? noDataFoundText,
      required bool noProduct,
      Widget? noProductWidget,
      bool isUseExpanded = true}) {
    return isUseExpanded
        ? Expanded(
            flex: 1,
            child: noDataFound(
                textColor: textColor,
                noDataFoundText: noDataFoundText == null
                    ? S.of(context).noDataFound
                    : noDataFoundText),
          )
        : noProduct
            ? noProductWidget
            : noDataFound(
                noDataFoundText: noDataFoundText == null
                    ? S.of(context).noDataFound
                    : noDataFoundText,
                textColor: textColor);
  }

  Widget noDataFound(
          {String? noDataFoundText, Color textColor = accentColor}) =>
      Center(
        child: CustomText(
          text: noDataFoundText == null
              ? S.current.noDataFound
              : noDataFoundText,
          customTextStyle: BoldStyle(fontSize: 20.sp, color: accentColor),
        ),
      );
}
