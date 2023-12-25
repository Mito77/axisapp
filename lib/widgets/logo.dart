import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/image_paths.dart';
import 'package:image_loader/image_helper.dart';

Widget get logo => ImageHelper(
      image: logoImage,
      width: 142.w,
      height: 65.h,
      alignment: Alignment.center,
      imageType: ImageType.asset,
      boxFit: BoxFit.contain,
    );
