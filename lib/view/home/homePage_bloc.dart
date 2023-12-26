import 'package:axisapp/bases/button_bloc.dart';
import 'package:axisapp/models/Details/Details.dart';
import 'package:axisapp/models/Images/ImagesMapper.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/repository/Details_Repository/Details_repository.dart';
import 'package:axisapp/repository/Images_Repository/images_repository.dart';
import 'package:axisapp/repository/popularPeople_Repository/popularPeople_repository.dart';
import 'package:rxdart/subjects.dart';

class HomePageBloc extends ButtonBloc {
  final _popularPeopleBehaviour =
      BehaviorSubject<ApiState<PopularPeopleMapper>>();

  Stream<ApiState<PopularPeopleMapper>> get getAllPopularPeopleStream =>
      _popularPeopleBehaviour.stream;
  final _imagesBehaviour =
      BehaviorSubject<ApiState<ImagesMapper>>();

  Stream<ApiState<ImagesMapper>> get getAllImagesStream =>
      _imagesBehaviour.stream;

  final _DetailsBehaviour = BehaviorSubject<ApiState<DetailsMapper>>();

  Stream<ApiState<DetailsMapper>> get getAllDetailsStream =>
      _DetailsBehaviour.stream;

  callGetPopularPeopleDataApi(context, language, page) async {
    await _popularPeopleBehaviour.sink.addStream(
        PopularPeopleRepository().PopularPeople(context, language, page));
    return _popularPeopleBehaviour.value.response!.results;
  }
  callGetImagesDataApi(context, person_id) async {
    await _imagesBehaviour.sink.addStream(
       ImagesRepository().Images(context,person_id));
    return _imagesBehaviour.value.response!.profiles;
  }

  callGetDetailsDataApi(context, person_id, language) async {
    await _DetailsBehaviour.sink
        .addStream(DetailsRepository().Details(context, person_id, language));
    return _DetailsBehaviour.value.response!;
  }

  @override
  void init() {
    super.init();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
