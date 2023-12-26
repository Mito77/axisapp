import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/widgets/appBarCustome.dart';
import 'package:axisapp/widgets/custom_button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:gallery_saver/gallery_saver.dart';

class DisplayImageWidget extends BaseStatefulWidget {
  final String imagePath;

  DisplayImageWidget({Key? key, required this.imagePath}) : super(key: key);

  @override
  _DisplayImageWidgetState createState() => _DisplayImageWidgetState();
}

class _DisplayImageWidgetState extends BaseState<DisplayImageWidget>
    with TickerProviderStateMixin {
  var h, w;

  @override
  void initState() {
    super.initState();
  }

  @override
  PreferredSizeWidget? appBar() => null;

  String buildImageUrl(String filePath) {
    return "https://image.tmdb.org/t/p/original/${filePath}";
  }

  @override
  Widget getBody(BuildContext context) {
    h = 667.h;
    w = 375.w;
    return WillPopScope(
        child: buildScreenDesign(),
        onWillPop: () async {
          ViewHelper(context).openHomePageWidget();
          return true;
        });
  }

  Widget buildScreenDesign() {
    return Container(
      height: h,
      width: w,
      color: whiteColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            appBarCustom(w, h, context, "Image", () {}, true),
            Image.network(
              buildImageUrl(widget.imagePath),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 25.h),
            downloadButton,
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }

  Widget get downloadButton => Container(
    width: 150.w,
    child: CustomButton(
          idleText: "download Image",
          onTap: () {
            _saveImageToLocal();
          },
          buttonColor: accentGreen,
        ),
  );
  void _saveImageToLocal() async {
    try {
      await GallerySaver.saveImage(buildImageUrl(widget.imagePath), albumName: "Axisapp");
      ViewHelper(context).showSnakeBar('Image saved successfully');
      ViewHelper(context).openHomePageWidget();
    } catch (e) {
      print("Error saving image: $e");
    }
  }
}
