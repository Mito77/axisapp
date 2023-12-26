import 'dart:developer';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:axisapp/models/Details/Details.dart';
import 'package:axisapp/models/Images/ImagesMapper.dart';
import 'package:axisapp/models/Images/Porfiles/profilesMapper.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:axisapp/utilities/CustomText.dart';
import 'package:axisapp/utilities/CustomTextStyle.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:axisapp/utilities/textUtilil.dart';
import 'package:axisapp/utilities/view_helper.dart';
import 'package:axisapp/view/displayImage/displayImage.dart';
import 'package:axisapp/view/home/homePage_bloc.dart';
import 'package:axisapp/widgets/appBarCustome.dart';
import 'package:dio/dio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/utilities/app_colors.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

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
  bool showDetails = false;
  final String language = 'en-US';
  int PageNumber = 1;
  int currentIndex = 0;
  List<Result> items = [];
  List<bool> isContainerOpenList = [];
  DetailsMapper? detailsItems;
  List<Profile>? imagesItems;

  String formattedBirthday(birthday) {
    var formatter = DateFormat('yyyy-MM-dd', 'en_US');
    return formatter.format(birthday);
  }

  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    // saveApiData();
    hasMore = true;
    _homeBloc.init();
    fetchResultsData();
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetchResultsData();
      }
    });
  }

  String getGenderText(int gender) {
    switch (gender) {
      case 0:
        return "Not set / not specified";
      case 1:
        return "Female";
      case 2:
        return "Male";
      default:
        return "Non-binary";
    }
  }

  String buildImageUrl(String filePath) {
    return "https://image.tmdb.org/t/p/original/${filePath}";
  }

  fetchResultsData() async {
    try {
      var connectivityResult = await Connectivity().checkConnectivity();
      List<Result> newResultItems = [];

      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        if (hasMore) {
          newResultItems =
          await _homeBloc.callGetPopularPeopleDataApi(context, language, PageNumber);

          if (newResultItems.isEmpty) {
            setState(() {
              hasMore = false;
            });
          }
          else
            {
              setState(() {
                items.addAll(newResultItems);
               isContainerOpenList = List.generate(items.length, (index) => false);
                PageNumber++;
              });
            }
        }
      } else {
        newResultItems =
        await _homeBloc.callGetPopularPeopleDataApi(context, language, PageNumber);
        setState(() {   items.addAll(newResultItems);
        isContainerOpenList = List.generate(items.length, (index) => false);

        hasMore = false;
        });
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
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index < items.length) {
            Result result = items[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                resultTile(result, index),
              /*  if (isContainerOpenList[index] &&
                    detailsItems != null &&
                    imagesItems != null)
                  Column(
                    children: [
                      DetailsContainer(detailsItems!),
                      ImagesGridView(),
                    ],
                  ),*/
              ],
            );
          } else {
            return hasMore
                ? LoadingIndicator()
                : Container();
          }

        },
      ),
    );
  }

  Widget ImagesGridView() {
    return Container(
      height: 180.h,
      width: w,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: imagesItems!.length,
        itemBuilder: (context, index) {
          Profile photoProfile = imagesItems![index];
          return imagesItems!.isNotEmpty
              ? GridTile(
                  child: InkWell(
                    onTap: () {
                      ViewHelper(context)
                          .openDisplayImageWidget(photoProfile.filePath!);
                    },
                    child: Image.network(
                      buildImageUrl(photoProfile.filePath!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black54,
                    title: Text('Vote Average: ${photoProfile.voteAverage}'),
                    subtitle: Text('Vote Count: ${photoProfile.voteCount}'),
                  ),
                )
              : LoadingIndicator();
        },
      ),
    );
  }

  Widget LoadingIndicator() {
    return getCustomProgress();
  }

  Widget resultTile(Result result, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
      child: InkWell(
        onTap: () async {
          setState(() {
            isContainerOpenList[index] = !isContainerOpenList[index];

            for (int i = 0; i < isContainerOpenList.length; i++) {
              if (i != index) {
                isContainerOpenList[i] = false;
              }
            }
          });

          if (isContainerOpenList[index]) {
            DetailsMapper? details = await _homeBloc.callGetDetailsDataApi(
              context,
              result.id,
              language,
            );
            print("details ${details}");
            setState(() {
              detailsItems = details;
            });
            print("detailsItems ${detailsItems}");
            List<Profile>? images = await _homeBloc.callGetImagesDataApi(
              context,
              result.id,
            );
            print("images ${images}");
            setState(() {
              imagesItems = images;
            });
            // downloadFile(context, images!.elementAt(0).filePath, result.id);
            print("imagesItems ${imagesItems}");
          }
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2.0,
                blurRadius: 5.0,
                offset: Offset(0, 2), // Adjust shadow position
              ),
            ],
            color: index % 2 == 0 ? whiteColor : blackColor,
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the radius as needed
          ),
          child: ListTile(
            title: Text(
              textAlign: TextAlign.center,
              result.name.toString(),
              style: TextStyle(
                  color: index % 2 == 0 ? blackColor : whiteColor,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDetailsSection(DetailsMapper details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildDetailItem("Name", details.name.toString()),
        buildDetailItem("Biography", details.biography.toString()),
        buildDetailItem("Birthday", formattedBirthday(details.birthday)),
        buildDetailItem("Gender", getGenderText(details.gender!)),
        buildDetailItem(
            "place of birth",
            details.placeOfBirth.toString() == "null"
                ? "notFound"
                : details.placeOfBirth.toString()),
        buildDetailItem(
            "known for department", details.knownForDepartment.toString()),
      ],
    );
  }

  Widget buildDetailItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        boldText(title, textSize: 20),
        Text(
          value,
          style: TextStyle(color: whiteColor, fontSize: 18),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }

  Widget DetailsContainer(DetailsMapper detailsMapper) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2.0,
                blurRadius: 5.0,
                offset: Offset(0, 2),
              ),
            ],
            color: accentGreen,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            title: buildDetailsSection(detailsMapper),
          ),
        ),
      ),
    );
  }
}
