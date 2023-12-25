

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/view/home/homePage.dart';
import 'package:axisapp/widgets/logo.dart';

class   SplashWidget extends BaseStatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends BaseState<SplashWidget> {
  var h, w;

  @override
  void initState() {
    super.initState();
  }

  @override
  PreferredSizeWidget? appBar() => null;

  @override
  Widget getBody(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return AnimatedSplashScreen(
      splash: logo,
      splashIconSize: 300,
      nextScreen: homePageWidget(),
      duration: 1000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }


  @override
  bool isSafeArea() => false;

  @override
  Future<bool> willPopBack() async => true;
}
