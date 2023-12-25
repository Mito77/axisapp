import 'package:json_annotation/json_annotation.dart';

part 'placeType_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PlaceTypeResponse {
  @JsonKey(name: 'id')
  dynamic id;
  @JsonKey(name: 'attachment')
  dynamic attachment;
  @JsonKey(name: 'created_at')
  dynamic created_at;
  @JsonKey(name: 'is_seat')
  dynamic is_seat;
  @JsonKey(name: 'modified_at')
  dynamic modified_at;
  @JsonKey(name: 'place_type_ar')
  dynamic place_type_ar;
  @JsonKey(name: 'place_type_en')
  dynamic place_type_en;


  PlaceTypeResponse();

  factory PlaceTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceTypeResponseFromJson(json);
}
