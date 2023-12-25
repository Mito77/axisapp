import 'package:axisapp/view/home/homePage_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/utilities/app_colors.dart';

class homePageWidget extends BaseStatefulWidget {
  homePageWidget();

  @override
  _homePageViewState createState() => _homePageViewState();
}

class _homePageViewState extends BaseState<homePageWidget>
    with TickerProviderStateMixin {
  var h, w;

  HomePageBloc _homeBloc = HomePageBloc();

  @override
  void initState() {
    super.initState();

    _homeBloc.init();
  }


  @override
  Widget getBody(BuildContext context) {
    h = 667.h;
    w = 375.w;
    return WillPopScope(
        child: screenDesign,
        onWillPop: () async {
          return false;
        });
  }

  Widget get screenDesign {
    return Container(
      color: whiteColor,
    );
  }
}
