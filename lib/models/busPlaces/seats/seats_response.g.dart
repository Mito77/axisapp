// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatsResponse _$SeatsResponseFromJson(Map<String, dynamic> json) =>
    SeatsResponse()
      ..id = json['id']
      ..seat_column = json['seat_column']
      ..seat_level = json['seat_level']
      ..seat_number = json['seat_number']
      ..seat_row = json['seat_row'];

Map<String, dynamic> _$SeatsResponseToJson(SeatsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seat_column': instance.seat_column,
      'seat_level': instance.seat_level,
      'seat_number': instance.seat_number,
      'seat_row': instance.seat_row,
    };
