import 'package:flutter/material.dart';
 import 'package:axisapp/utilities/app_colors.dart';
import 'package:axisapp/utilities/image_paths.dart';
import 'package:axisapp/widgets/imageSlider.dart';
import 'package:image_loader/image_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextForm extends StatefulWidget {


  @override
  _SearchTextFormState createState() => _SearchTextFormState();
}

class _SearchTextFormState extends State<SearchTextForm> {
  var h, w;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container();
  }

}
