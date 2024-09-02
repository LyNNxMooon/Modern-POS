// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      message: json['message'] as String?,
      errors: json['errors'],
      success: json['success'] as bool?,
      token: json['token'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
      'success': instance.success,
      'token': instance.token,
      'data': instance.data,
    };
