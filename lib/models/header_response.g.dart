// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeaderResponse _$HeaderResponseFromJson(Map<String, dynamic> json) =>
    HeaderResponse()
      ..code = json['code'] as int?
      ..message = json['message'] as String?
      ..token = json['token'] as String?
      ..userNumber = json['userNumber'] as String?
      ..data = json['data']
      ..vacationTypeModels = json['vacationTypeModels']
      ..vacationRequestBalances = json['vacationRequestBalances']
      ..errors = json['errors'];

Map<String, dynamic> _$HeaderResponseToJson(HeaderResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'token': instance.token,
      'userNumber': instance.userNumber,
      'data': instance.data,
      'vacationTypeModels': instance.vacationTypeModels,
      'vacationRequestBalances': instance.vacationRequestBalances,
      'errors': instance.errors,
    };
