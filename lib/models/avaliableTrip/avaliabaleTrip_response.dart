import 'package:json_annotation/json_annotation.dart';

part 'avaliabaleTrip_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AvaliabaleTripResponse {
  @JsonKey(name: 'departure_time')
  dynamic departure_time;
  @JsonKey(name: 'governorate_ar_from')
  dynamic governorate_ar_from;
  @JsonKey(name: 'governorate_ar_to')
  dynamic governorate_ar_to;
  @JsonKey(name: 'governorate_id_from')
  dynamic governorate_id_from;
  @JsonKey(name: 'governorate_id_to')
  dynamic governorate_id_to;
  @JsonKey(name: 'governorate_order_from')
  dynamic governorate_order_from;

  @JsonKey(name: 'governorate_order_to')
  dynamic governorate_order_to;
  @JsonKey(name: 'id')
  dynamic id;
  @JsonKey(name: 'price')
  dynamic price;
  @JsonKey(name: 'seat_count')
  dynamic seat_count;
  @JsonKey(name: 'station_ar_from')
  dynamic station_ar_from;
  @JsonKey(name: 'station_ar_to')
  dynamic station_ar_to;

  @JsonKey(name: 'station_id_from')
  dynamic station_id_from;
  @JsonKey(name: 'station_id_to')
  dynamic station_id_to;
  @JsonKey(name: 'station_order_from')
  dynamic station_order_from;
  @JsonKey(name: 'station_order_to')
  dynamic station_order_to;
  @JsonKey(name: 'trip_date')
  dynamic trip_date;
  @JsonKey(name: 'trip_number')
  dynamic trip_number;
  AvaliabaleTripResponse();

  factory AvaliabaleTripResponse.fromJson(Map<String, dynamic> json) =>
      _$AvaliabaleTripResponseFromJson(json);
}
