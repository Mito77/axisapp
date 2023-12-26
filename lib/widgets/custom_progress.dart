import 'package:axisapp/utilities/image_paths.dart';
import 'package:axisapp/widgets/imageSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:axisapp/utilities/app_colors.dart';

class CustomProgress extends StatefulWidget {
  final double size;
  final Color color;

  CustomProgress({this.size = 30, this.color = blackColor});

  @override
  _CustomProgressState createState() => _CustomProgressState();
}

class _CustomProgressState extends State<CustomProgress>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        alignment: Alignment.center,
        child:SpinKitWaveSpinner(
          waveColor:whiteColor ,
        color: accentGreen,
        size: 60.sp,
      )
      ),
    );
  }
}
