import 'package:flutter/material.dart';
 import 'package:image_loader/image_helper.dart';

Widget imageHelper(image,width,height) {
  return ImageHelper(
    image: image,
     width: width,
    height: height,
    boxFit: BoxFit.fill,
    imageType: ImageType.asset,

  );
}
