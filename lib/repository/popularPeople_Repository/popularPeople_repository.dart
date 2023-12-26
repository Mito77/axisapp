import 'dart:convert';
import 'dart:developer';

import 'package:axisapp/Network/api_client.dart';
import 'package:axisapp/Network/dio_helper.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class PopularPeopleRepository {
  Box? box;

  Future openBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    box = await Hive.openBox('mapperDataOffline');
    return;
  }

  Future putData(data,page) async {
    print('testtt');
    if(page==1)
    await box!.clear();
    for (var d in data) {
      box!.add(d);
    }
  }

  PopularPeopleMapper addToMapper(response, isResponse) {
    PopularPeopleMapper? popularPeople;
    List<Result>? resultList = [];
    if (isResponse) {
      for (int i = 0; i < response["results"].length; i++) {
        resultList.add(Result.fromJson(response["results"][i]));
      }

      popularPeople = PopularPeopleMapper(
          page: response['page'],
          results: resultList,
          totalPages: response['total_pages'],
          totalResults: response['total_results']);
    } else {
      for (int i = 0; i < response.length; i++) {
        try {
          resultList.add(Result.offLine(
              adult: response[i]['adult'],
              gender:  response[i]['gender'],
              id:  response[i]['id'],
              knownForDepartment:  response[i]['knownForDepartment'],
              name: response[i]['name'],
              originalName: response[i]['originalName'],
              popularity: response[i]['popularity'],
              profilePath: response[i]['profilePath'],
              knownFor: response[i]['knownFor']));
        } catch (e) {
          print(e);
        }
      }

      popularPeople = PopularPeopleMapper(
          page: 1, results: resultList, totalPages: 1, totalResults: 1);
    }

    return popularPeople;
  }

  Stream<ApiState<PopularPeopleMapper>> PopularPeople(
      BuildContext context, language, page) async* {
    await openBox();
    yield LoadingState();
    try {
      SharedPRefHelper().setBearerToken(
          "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZWFjOWNmOGMzMjllODBiYjk4YjI4M2UwYmViMTZiYSIsInN1YiI6IjY1ODk2MjliMDcyMTY2Njg1YWE1OGIxOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ZcNdcqZ4hoZR7SeHQ6_VvDydEQK4dAkaAOIAawoznkI");
      print("BearerToken ${SharedPRefHelper().getBearerToken}");
      final response = await ApiClient(
              DioHelper().getDio(Constant.baseLiveUrl, true),
              baseUrl: Constant.baseLiveUrl)
          .popularPeople(language, page);
    //    putData(response.data['results'],page);

      yield SuccessState(addToMapper(response.data, true));
    } catch (e) {
      yield SuccessState(addToMapper(box!.toMap().values.toList(), false));
    }
  }
}
