import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/utilities/image_paths.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:image_loader/image_helper.dart';

Widget backIcon(context,route) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);

    },
  );
}
