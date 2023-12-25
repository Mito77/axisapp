import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:axisapp/utilities/textUtilil.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/view/home/homePage_bloc.dart';
import 'package:axisapp/widgets/appBarCustome.dart';
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
  late bool hasMore;
  late bool showDetails;
  final String language = 'en-US';
  int PageNumber = 1;
  List<Result> items = [];
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    hasMore = true;
    showDetails = false;
    _homeBloc.init();
    fetchResultsData();
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetchResultsData();
      }
    });
  }

  fetchResultsData() async {
    try {
      if (hasMore) {
        List<Result> newResultItems = await _homeBloc
            .callGetPopularPeopleDataApi(context, language, PageNumber);
        print("newResultItems ${newResultItems}");

        if (newResultItems.length == 0) {
          setState(() {
            hasMore = false;
          });
        } else {
          setState(() {
            items.addAll(newResultItems);
            PageNumber++;
          });
        }
      }
    } catch (error) {
      print('Error in fetchResultsData: $error');
    }
  }

  @override
  PreferredSizeWidget? appBar() => null;

  @override
  Widget getBody(BuildContext context) {
    h = 667.h;
    w = 375.w;
    return WillPopScope(
        child: buildScreenDesign(),
        onWillPop: () async {
          ViewHelper(context).openSplashWidget();
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
          children: [
            appBarCustom(w, h, context, "Popular People", () {}, false),
            buildResultListView(),
          ],
        ),
      ),
    );
  }

  Widget buildResultListView() {
    return Container(
      height: h,
      width: w,
      child: ListView.builder(
        controller: controller,
        itemCount: items.length + (hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == items.length) {
            return buildLoadingIndicator();
          } else {
            if (hasMore) {
              Result result = items[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  resultTile(result, index),
                  // showDetails?Details():Container(),
                ],
              );
            } else {
              return buildLoadingIndicator();
            }
          }
        },
      ),
    );
  }

  Widget buildLoadingIndicator() {
    return getCustomProgress();
  }

  Widget resultTile(Result result, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
      child: InkWell(
        onTap: () {
          setState(() {
            showDetails = !showDetails;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                // Adjust shadow color and opacity
                spreadRadius: 2.0,
                // Adjust spread radius
                blurRadius: 5.0,
                // Adjust blur radius
                offset: Offset(0, 2), // Adjust shadow position
              ),
            ],
            color: index % 2 == 0 ? whiteColor : greyColor.withOpacity(.6),
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the radius as needed
          ),
          child: ListTile(
            title: boldText(result.name.toString(), textSize: 20),
          ),
        ),
      ),
    );
  }
  Widget Details(Result result, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
      child: InkWell(
        onTap: () {
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                // Adjust shadow color and opacity
                spreadRadius: 2.0,
                // Adjust spread radius
                blurRadius: 5.0,
                // Adjust blur radius
                offset: Offset(0, 2), // Adjust shadow position
              ),
            ],
            color: index % 2 == 0 ? whiteColor : greyColor.withOpacity(.6),
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the radius as needed
          ),
          child: ListTile(
            title: boldText(result.name.toString(), textSize: 20),

          ),
        ),
      ),
    );
  }
}
