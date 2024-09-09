import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
part 'profile_image_upload_response.g.dart';

@JsonSerializable()
class ProfileImageUploadResponse {
  final bool success;
  final String message;
  final UserVO data;

  ProfileImageUploadResponse(
      {required this.success, required this.message, required this.data});

  factory ProfileImageUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageUploadResponseFromJson(json);
}
