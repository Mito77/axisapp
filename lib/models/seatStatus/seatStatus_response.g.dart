// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seatStatus_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatStatusResponse _$SeatStatusResponseFromJson(Map<String, dynamic> json) =>
    SeatStatusResponse()
      ..id = json['id']
      ..seat_status_en = json['seat_status_en']
      ..seat_status_ar = json['seat_status_ar']
      ..attachment = json['attachment'];

Map<String, dynamic> _$SeatStatusResponseToJson(SeatStatusResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seat_status_en': instance.seat_status_en,
      'seat_status_ar': instance.seat_status_ar,
      'attachment': instance.attachment,
    };
