import 'dart:async';

 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/widgets/imageSlider.dart';
import 'package:axisapp/utilities/image_paths.dart';

class welcomePageWidget extends BaseStatefulWidget {
  @override
  _welcomePageViewState createState() => _welcomePageViewState();
}

class _welcomePageViewState extends BaseState<welcomePageWidget> {
  int startIndex = 0;
  late var highlights;
  int _start = 5;
  late Timer _timer;

  void startTimer() {
    const oneSec = const Duration(seconds: 5);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
     //   ViewHelper(context).openLoginWidgetScreen();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  PreferredSizeWidget? appBar() => null;

  Widget getBody(BuildContext context) => WillPopScope(
      child: screenDesign,
      onWillPop: () async {
        return false;
      });

  Widget get screenDesign => SingleChildScrollView(
          child: Container(
        height: 667.h,
        width: 375.w,
        color: whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 69.w,
          vertical: 292.h),
          child:    imageHelper(
              logoImage, 238.w, 82.h),

        ),
      ));


  bool isSafeArea() => false;

  Future<bool> willPopBack() async => true;
}
