import 'dart:core';

import 'package:axisapp/models/busPlaces/placeType/placeType_mapper.dart';
import 'package:axisapp/models/busPlaces/seats/seats_response.dart';
import 'package:axisapp/models/seatStatus/seatStatus_mapper.dart';
import 'package:axisapp/models/seatStatus/seatStatus_response.dart';



class SeatsMapper {
  dynamic id;
  dynamic seat_column;
  dynamic seat_level;
  dynamic seat_number;
  dynamic ticket_number;
  dynamic seat_row;
  PlaceTypeMapper? placeType;
  SeatStatusMapper? seatStatusMapper;

  SeatsMapper({required SeatsResponse seatsResponse,
  required SeatStatusMapper? seatStatusMapper,
  required
  PlaceTypeMapper? placeType,required ticket_number}) {
    this.ticket_number =ticket_number;
    this.id = seatsResponse.id;
    this.seat_column = seatsResponse.seat_column;
    this.seat_level = seatsResponse.seat_level;
    this.seat_number = seatsResponse.seat_number;
    this.seat_row = seatsResponse.seat_row;
    this.seatStatusMapper=seatStatusMapper;
    this.placeType=placeType;

  }
}
