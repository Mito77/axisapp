import 'package:json_annotation/json_annotation.dart';

part 'seatStatus_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SeatStatusResponse {
  @JsonKey(name: 'id')
  dynamic id;
  @JsonKey(name: 'seat_status_en')
  dynamic seat_status_en;
  @JsonKey(name: 'seat_status_ar')
  dynamic seat_status_ar;
  @JsonKey(name: 'attachment')
  dynamic attachment;


  SeatStatusResponse();

  factory SeatStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$SeatStatusResponseFromJson(json);
}
