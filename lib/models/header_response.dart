import 'package:json_annotation/json_annotation.dart';

part 'header_response.g.dart';

@JsonSerializable(explicitToJson: true)
class HeaderResponse {
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'userNumber')
  String? userNumber;
  @JsonKey(name: 'data')
  dynamic  data;
  @JsonKey(name: 'vacationTypeModels')
  dynamic  vacationTypeModels;
  @JsonKey(name: 'vacationRequestBalances')
  dynamic  vacationRequestBalances;
  @JsonKey(name: 'errors')
  dynamic  errors;


  HeaderResponse();

  factory HeaderResponse.fromJson(Map<String, dynamic> json) =>
      _$HeaderResponseFromJson(json);
}
