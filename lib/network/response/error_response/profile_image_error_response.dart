import 'package:json_annotation/json_annotation.dart';
part 'profile_image_error_response.g.dart';

@JsonSerializable()
class ProfileImageErrorResponse {
  final String error;

  ProfileImageErrorResponse({required this.error});

  factory ProfileImageErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageErrorResponseFromJson(json);
}
