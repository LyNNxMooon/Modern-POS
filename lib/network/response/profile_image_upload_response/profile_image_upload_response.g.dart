// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileImageUploadResponse _$ProfileImageUploadResponseFromJson(
        Map<String, dynamic> json) =>
    ProfileImageUploadResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: UserVO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileImageUploadResponseToJson(
        ProfileImageUploadResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
