import 'package:json_annotation/json_annotation.dart';

part 'station_response.g.dart';

@JsonSerializable(explicitToJson: true)
class StationResponse {
  @JsonKey(name: 'id')
  dynamic id;
  @JsonKey(name: 'station_ar')
  dynamic station_ar;
  @JsonKey(name: 'station_en')
  dynamic station_en;


  StationResponse();

  factory StationResponse.fromJson(Map<String, dynamic> json) =>
      _$StationResponseFromJson(json);
}
