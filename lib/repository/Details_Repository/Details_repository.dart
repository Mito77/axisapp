import 'package:axisapp/Network/api_client.dart';
import 'package:axisapp/Network/dio_helper.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/models/Details/Details.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';

class DetailsRepository {
  Stream<ApiState<DetailsMapper>> Details(
      BuildContext context, person_id, language) async* {
    yield LoadingState();
    try {
      SharedPRefHelper().setBearerToken(
          "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZWFjOWNmOGMzMjllODBiYjk4YjI4M2UwYmViMTZiYSIsInN1YiI6IjY1ODk2MjliMDcyMTY2Njg1YWE1OGIxOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ZcNdcqZ4hoZR7SeHQ6_VvDydEQK4dAkaAOIAawoznkI");
      print("BearerToken ${SharedPRefHelper().getBearerToken}");
      final response = await ApiClient(
              DioHelper().getDio(Constant.baseLiveUrl, true),
              baseUrl: Constant.baseLiveUrl)
          .details(person_id, language);

      DetailsMapper? detailsMapper;
      print("results ${response.data}");

      detailsMapper = DetailsMapper(
        adult: response.data["adult"],
        alsoKnownAs:
            List<String>.from(response.data["also_known_as"].map((x) => x)),
        biography: response.data["biography"],
        birthday: DateTime.parse(response.data["birthday"]),
        deathday: response.data["deathday"],
        gender: response.data["gender"],
        homepage: response.data["homepage"],
        id: response.data["id"],
        imdbId: response.data["imdb_id"],
        knownForDepartment: response.data["known_for_department"],
        name: response.data["name"],
        placeOfBirth: response.data["place_of_birth"],
        popularity: response.data["popularity"]?.toDouble(),
        profilePath: response.data["profile_path"],
      );

      yield SuccessState(detailsMapper!);
    } catch (e) {
      print('detailsError: $e');
      yield ErrorState(
          message: e.toString(), loggerName: 'details api error :');
    }
  }
}
