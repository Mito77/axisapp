import 'package:axisapp/utilities/constant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:axisapp/models/header_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constant.baseLiveUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET('person/popular')
  Future<HeaderResponse> popularPeople(
    @Query('language') String language,
    @Query('page') int page,
  );

  @GET('person/{person_id}')
  Future<HeaderResponse> details(
    @Path('person_id') int person_id,
    @Query('language') String language,
  );
  @GET('person/{person_id}/images')
  Future<HeaderResponse> images(
    @Path('person_id') int person_id,
  );
}
