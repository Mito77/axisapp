

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/app_colors.dart';

class CustomBottomSheetDialog extends StatefulWidget {
  final Widget child;
  final bool fullScreen;

  CustomBottomSheetDialog({required this.child, this.fullScreen = false});

  @override
  _CustomBottomSheetDialogState createState() =>
      _CustomBottomSheetDialogState();
}

class _CustomBottomSheetDialogState extends State<CustomBottomSheetDialog> {
  @override
  Widget build(BuildContext context) =>Container(
    color: blackColor.withOpacity(.5),
    child: Column(
      children: [
        spaceDialogWidget,
        defaultDialogWidget,
      ],

    ),
  );

  Widget get spaceDialogWidget => Expanded(
        child: Container(),
        flex: 2,
      );

  Widget get defaultDialogWidget => widget.fullScreen
      ? Expanded(
          child: dialogDesignWidget,
        )
      : dialogDesignWidget;

  Widget get dialogDesignWidget => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.h),
                topRight: Radius.circular(15.h)),
            color: Colors.white),
        height: !widget.fullScreen ? null : 400.h,
        child: dialogDesign,
      );

  Widget get dialogDesign => Padding(
        padding: EdgeInsets.only(
            left: widget.fullScreen ? 16.w : 0,
            right: widget.fullScreen ? 16.w : 0),
        child: widget.fullScreen
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Expanded(child: widget.child)],
              )
            : widget.child,
      );
}
