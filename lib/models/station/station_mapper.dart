import 'dart:core';


import 'station_response.dart';

class StationMapper {
  dynamic id;
  dynamic station_ar;
  dynamic station_en;

  StationMapper({required StationResponse stationResponse}) {
    this.id = stationResponse.id;
    this.station_ar = stationResponse.station_ar;
    this.station_en = stationResponse.station_en;

  }
}
