import 'package:axisapp/Network/api_client.dart';
import 'package:axisapp/Network/dio_helper.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/models/popularPeople/knownFor/knownForMapper.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:axisapp/utilities/constant.dart';

class DrawStructureRepository {
  Stream<ApiState<PopularPeopleMapper>> PopularPeople(language, page) async* {
    yield LoadingState();
    try {
      final response = await ApiClient(
              DioHelper().getDio(Constant.baseLiveUrl, true),
              baseUrl: Constant.baseLiveUrl)
          .popularPeople(language, page);

      PopularPeopleMapper? popularPeopleList;
      List<Result>? resultList = [];

      for (int i = 0; i < response.data["results"].length; i++) {
        resultList.add(Result.fromJson(response.data["results"][i]));
      }

      popularPeopleList = PopularPeopleMapper(
          page: response.data['page'],
          results: resultList,
          totalPages: response.data['totalPages'],
          totalResults: response.data['totalResults']);

      yield SuccessState(popularPeopleList!);
    } catch (e) {
      print('popularPeopleError: $e');
      yield ErrorState(
          message: e.toString(), loggerName: 'popularPeople api error :');
    }
  }
}
