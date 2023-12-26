import 'package:axisapp/Network/api_client.dart';
import 'package:axisapp/Network/dio_helper.dart';
import 'package:axisapp/bases/base_state.dart';
import 'package:axisapp/models/Images/ImagesMapper.dart';
import 'package:axisapp/models/Images/Porfiles/profilesMapper.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';

class ImagesRepository {
  Stream<ApiState<ImagesMapper>> Images(
      BuildContext context, person_id) async* {
    yield LoadingState();
    try {
      SharedPRefHelper().setBearerToken(
          "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZWFjOWNmOGMzMjllODBiYjk4YjI4M2UwYmViMTZiYSIsInN1YiI6IjY1ODk2MjliMDcyMTY2Njg1YWE1OGIxOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ZcNdcqZ4hoZR7SeHQ6_VvDydEQK4dAkaAOIAawoznkI");
      print("BearerToken ${SharedPRefHelper().getBearerToken}");
      final response = await ApiClient(
              DioHelper().getDio(Constant.baseLiveUrl, true),
              baseUrl: Constant.baseLiveUrl)
          .images(person_id);

      ImagesMapper? imagesMapper;
      List<Profile>? profilesList = [];
      print("profiles ${response.data["profiles"]}");
      for (int i = 0; i < response.data["profiles"].length; i++) {
        profilesList.add(Profile.fromJson(response.data["profiles"][i]));
      }

      imagesMapper = ImagesMapper(
        id: response.data["id"],
        profiles: List<Profile>.from(
            response.data["profiles"].map((x) => Profile.fromJson(x))),
      );

      yield SuccessState(imagesMapper!);
    } catch (e) {
      print('imagesError: $e');
      yield ErrorState(message: e.toString(), loggerName: 'images api error :');
    }
  }
}
