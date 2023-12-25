import 'package:axisapp/Network/api_client.dart';
import 'package:axisapp/Network/dio_helper.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';

class PopularPeopleRepository {
  Stream<ApiState<PopularPeopleMapper>> PopularPeople(
      BuildContext context, language, page) async* {
    yield LoadingState();
    try {
      SharedPRefHelper().setBearerToken("eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZWFjOWNmOGMzMjllODBiYjk4YjI4M2UwYmViMTZiYSIsInN1YiI6IjY1ODk2MjliMDcyMTY2Njg1YWE1OGIxOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ZcNdcqZ4hoZR7SeHQ6_VvDydEQK4dAkaAOIAawoznkI");
      print("BearerToken ${SharedPRefHelper().getBearerToken}");
      final response = await ApiClient(
              DioHelper().getDio(Constant.baseLiveUrl, true),
              baseUrl: Constant.baseLiveUrl)
          .popularPeople(language, page);

      PopularPeopleMapper? popularPeople;
      List<Result>? resultList = [];
      print("results ${response.data["results"]}");
      for (int i = 0; i < response.data["results"].length; i++) {
        resultList.add(Result.fromJson(response.data["results"][i]));
      }

      popularPeople = PopularPeopleMapper(
          page: response.data['page'],
          results: resultList,
          totalPages: response.data['total_pages'],
          totalResults: response.data['total_results']);

      yield SuccessState(popularPeople!);
    } catch (e) {
      print('popularPeopleError: $e');
      yield ErrorState(
          message: e.toString(), loggerName: 'popularPeople api error :');
    }
  }
}
