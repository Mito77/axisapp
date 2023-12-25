import 'dart:core';

import 'package:axisapp/models/busPlaces/placeType/placeType_response.dart';
import 'package:axisapp/models/seatStatus/seatStatus_mapper.dart';
import 'package:axisapp/models/seatStatus/seatStatus_response.dart';



class PlaceTypeMapper {
  dynamic attachment;
  dynamic created_at;
  dynamic id;
  dynamic is_seat;
  dynamic modified_at; 
  dynamic place_type_ar;
  dynamic place_type_en;

  PlaceTypeMapper({required PlaceTypeResponse placeTypeResponse  }) {
    this.attachment = placeTypeResponse.attachment;
    this.created_at = placeTypeResponse.created_at;
    this.id = placeTypeResponse.id;
    this.is_seat = placeTypeResponse.is_seat;
    this.modified_at = placeTypeResponse.modified_at;
    this.place_type_ar = placeTypeResponse.place_type_ar; 
    this.place_type_en = placeTypeResponse.place_type_en; 

  }
}
