import 'dart:core';

import 'package:axisapp/models/avaliableTrip/avaliabaleTrip_response.dart';



class AvaliabaleTripMapper {
  dynamic departure_time;
  dynamic governorate_ar_from;
  dynamic governorate_ar_to;
  dynamic governorate_id_from;
  dynamic governorate_id_to;
  dynamic governorate_order_from;
  dynamic governorate_order_to;
  dynamic id;
  dynamic price;
  dynamic seat_count;
  dynamic station_ar_from;
  dynamic station_ar_to;
  dynamic station_id_from;
  dynamic station_id_to;
  dynamic station_order_from;
  dynamic station_order_to;
  dynamic trip_date;
  dynamic trip_number;


  AvaliabaleTripMapper({required AvaliabaleTripResponse avaliabaleTripResponse}) {
    this.trip_number = avaliabaleTripResponse.trip_number;
    this.trip_date = avaliabaleTripResponse.trip_date;
    this.station_order_to = avaliabaleTripResponse.station_order_to;
    this.station_order_from = avaliabaleTripResponse.station_order_from;
    this.station_id_to = avaliabaleTripResponse.station_id_to;
    this.station_id_from = avaliabaleTripResponse.station_id_from;
    this.station_ar_to = avaliabaleTripResponse.station_ar_to;
    this.station_ar_from = avaliabaleTripResponse.station_ar_from;
    this.seat_count = avaliabaleTripResponse.seat_count;
    this.price = avaliabaleTripResponse.price;
    this.id = avaliabaleTripResponse.id;
    this.governorate_order_to = avaliabaleTripResponse.governorate_order_to;
    this.governorate_order_from = avaliabaleTripResponse.governorate_order_from;
    this.departure_time = avaliabaleTripResponse.departure_time;
    this.governorate_ar_from = avaliabaleTripResponse.governorate_ar_from;
    this.governorate_ar_to = avaliabaleTripResponse.governorate_ar_to;
    this.governorate_id_from = avaliabaleTripResponse.governorate_id_from;
    this.governorate_id_to = avaliabaleTripResponse.governorate_id_to;

  }
}
