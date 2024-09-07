import 'package:json_annotation/json_annotation.dart';
part 'password_update_response.g.dart';

@JsonSerializable()
class PasswordUpdateResponse {
  final bool success;
  final String message;

  PasswordUpdateResponse({required this.success, required this.message});

  factory PasswordUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordUpdateResponseFromJson(json);
}
