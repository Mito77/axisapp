import 'dart:core';

import 'package:axisapp/models/seatStatus/seatStatus_response.dart';



class SeatStatusMapper {
  dynamic id;
  dynamic attachment;
  dynamic seat_status_ar;
  dynamic seat_status_en;

  SeatStatusMapper({required SeatStatusResponse seatStatusResponse}) {
    this.id = seatStatusResponse.id;
    this.attachment = seatStatusResponse.attachment;
    this.seat_status_ar = seatStatusResponse.seat_status_ar;
    this.seat_status_en = seatStatusResponse.seat_status_en;

  }
}
