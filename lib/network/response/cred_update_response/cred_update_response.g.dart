// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cred_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredUpdateResponse _$CredUpdateResponseFromJson(Map<String, dynamic> json) =>
    CredUpdateResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: UserVO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CredUpdateResponseToJson(CredUpdateResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
