import 'package:axisapp/bases/button_bloc.dart';
import 'package:axisapp/models/api_state.dart';
import 'package:axisapp/models/popularPeople/popularPeopleMapper.dart';
import 'package:axisapp/repository/popularPeople_Repository/popularPeople_repository.dart';
import 'package:rxdart/subjects.dart';

class HomePageBloc extends ButtonBloc {
  final _popularPeopleBehaviour =
      BehaviorSubject<ApiState<PopularPeopleMapper>>();
  Stream<ApiState<PopularPeopleMapper>> get getAllPopularPeopleStream =>
      _popularPeopleBehaviour.stream;

  callGetPopularPeopleDataApi(context, language, page) async {
    await _popularPeopleBehaviour.sink
        .addStream(PopularPeopleRepository().PopularPeople(context ,language, page));
    return _popularPeopleBehaviour.value.response!.results;
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
