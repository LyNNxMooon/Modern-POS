// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordUpdateResponse _$PasswordUpdateResponseFromJson(
        Map<String, dynamic> json) =>
    PasswordUpdateResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$PasswordUpdateResponseToJson(
        PasswordUpdateResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
