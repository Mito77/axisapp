import 'package:json_annotation/json_annotation.dart';

part 'seats_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SeatsResponse {
  @JsonKey(name: 'id')
  dynamic id;
  @JsonKey(name: 'seat_column')
  dynamic seat_column;
  @JsonKey(name: 'seat_level')
  dynamic seat_level;
  @JsonKey(name: 'seat_number')
  dynamic seat_number;
  @JsonKey(name: 'seat_row')
  dynamic seat_row;

  SeatsResponse();

  factory SeatsResponse.fromJson(Map<String, dynamic> json) =>
      _$SeatsResponseFromJson(json);
}
