import 'dart:core';

import 'package:axisapp/models/busPlaces/seats/seats_mapper.dart';

class BusMapper {
  List<SeatsMapper>? seatsMapper;

  BusMapper({required List<SeatsMapper> seatsMapper}) {
    this.seatsMapper = seatsMapper;
  }
}
