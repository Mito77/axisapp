// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placeType_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceTypeResponse _$PlaceTypeResponseFromJson(Map<String, dynamic> json) =>
    PlaceTypeResponse()
      ..id = json['id']
      ..attachment = json['attachment']
      ..created_at = json['created_at']
      ..is_seat = json['is_seat']
      ..modified_at = json['modified_at']
      ..place_type_ar = json['place_type_ar']
      ..place_type_en = json['place_type_en'];

Map<String, dynamic> _$PlaceTypeResponseToJson(PlaceTypeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attachment': instance.attachment,
      'created_at': instance.created_at,
      'is_seat': instance.is_seat,
      'modified_at': instance.modified_at,
      'place_type_ar': instance.place_type_ar,
      'place_type_en': instance.place_type_en,
    };
