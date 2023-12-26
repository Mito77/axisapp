import 'package:axisapp/Network/api_client.dart';
import 'package:axisapp/Network/dio_helper.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/models/Details/Details.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class DetailsRepository {
  Box? boxDetails;

  Future openBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    boxDetails = await Hive.openBox('DetailsOffline');
    return;
  }

  Future putData(data) async {
    await boxDetails!.clear();
    boxDetails!.add(data);
  }

  DetailsMapper addToDetailsMapper(response, isResponse) {
    DetailsMapper? details;
    if (isResponse) {
      details = DetailsMapper(
        adult: response["adult"],
        alsoKnownAs:
        List<String>.from(response["also_known_as"].map((x) => x)),
        biography: response["biography"],
        birthday: DateTime.parse(response["birthday"]),
        deathday: response["deathday"],
        gender: response["gender"],
        homepage: response["homepage"],
        id: response["id"],
        imdbId: response["imdb_id"],
        knownForDepartment: response["known_for_department"],
        name: response["name"],
        placeOfBirth: response["place_of_birth"],
        popularity: response["popularity"]?.toDouble(),
        profilePath: response["profile_path"],
      );
    } else {
       try {
        details = DetailsMapper.offLine(
          adult: response["adult"],
          alsoKnownAs:
          List<String>.from(response["also_known_as"].map((x) => x)),
          biography: response["biography"],
          birthday: DateTime.parse(response["birthday"]),
          deathday: response["deathday"],
          gender: response["gender"],
          homepage: response["homepage"],
          id: response["id"],
          imdbId: response["imdb_id"],
          knownForDepartment: response["known_for_department"],
          name: response["name"],
          placeOfBirth: response["place_of_birth"],
          popularity: response["popularity"]?.toDouble(),
          profilePath: response["profile_path"]);
      } catch (e) {
        print(e);
      }

    }

    return details!;
  }

  Stream<ApiState<DetailsMapper>> Details(BuildContext context, person_id,
      language) async* {
    await openBox();
    yield LoadingState();
    try {
      SharedPRefHelper().setBearerToken(
          "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZWFjOWNmOGMzMjllODBiYjk4YjI4M2UwYmViMTZiYSIsInN1YiI6IjY1ODk2MjliMDcyMTY2Njg1YWE1OGIxOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ZcNdcqZ4hoZR7SeHQ6_VvDydEQK4dAkaAOIAawoznkI");
      print("BearerToken ${SharedPRefHelper().getBearerToken}");
      final response = await ApiClient(
          DioHelper().getDio(Constant.baseLiveUrl, true),
          baseUrl: Constant.baseLiveUrl)
          .details(person_id, language);
      await putData(response.data);

      // DetailsMapper? detailsMapper;
      // print("results ${response.data}");
      //
      // detailsMapper = DetailsMapper(
      //   adult: response.data["adult"],
      //   alsoKnownAs:
      //   List<String>.from(response.data["also_known_as"].map((x) => x)),
      //   biography: response.data["biography"],
      //   birthday: DateTime.parse(response.data["birthday"]),
      //   deathday: response.data["deathday"],
      //   gender: response.data["gender"],
      //   homepage: response.data["homepage"],
      //   id: response.data["id"],
      //   imdbId: response.data["imdb_id"],
      //   knownForDepartment: response.data["known_for_department"],
      //   name: response.data["name"],
      //   placeOfBirth: response.data["place_of_birth"],
      //   popularity: response.data["popularity"]?.toDouble(),
      //   profilePath: response.data["profile_path"],
      // );

      yield SuccessState(addToDetailsMapper(response.data, true));
    } catch (e) {
      yield SuccessState(
          addToDetailsMapper(boxDetails!.toMap().values.toList(), false));
    }
  }
}
