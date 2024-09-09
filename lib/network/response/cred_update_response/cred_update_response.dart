import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
part 'cred_update_response.g.dart';

@JsonSerializable()
class CredUpdateResponse {
  final bool success;
  final String message;
  final UserVO data;

  CredUpdateResponse(
      {required this.success, required this.message, required this.data});

  factory CredUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$CredUpdateResponseFromJson(json);
}
