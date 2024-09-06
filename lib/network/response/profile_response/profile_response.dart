import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final bool success;
  final String message;
  final UserVO data;

  ProfileResponse(
      {required this.success, required this.message, required this.data});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
