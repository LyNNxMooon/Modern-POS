// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestVO _$RegisterRequestVOFromJson(Map<String, dynamic> json) =>
    RegisterRequestVO(
      name: json['name'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      fcm: json['fcm_token_key'] as String,
      confirmPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$RegisterRequestVOToJson(RegisterRequestVO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'password': instance.password,
      'fcm_token_key': instance.fcm,
      'password_confirmation': instance.confirmPassword,
    };
