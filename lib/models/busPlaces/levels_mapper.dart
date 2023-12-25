import 'dart:core';

import 'package:axisapp/models/busPlaces/busMapper/bus_mapper.dart';

class LevelsMapper {
  List<BusMapper>? busMapper;

  LevelsMapper({required List<BusMapper> busMapper}) {
    this.busMapper = busMapper;
  }
}
