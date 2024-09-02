import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String? message;
  final dynamic errors;
  final bool? success;
  final String? token;
  final dynamic data;

  RegisterResponse(
      {required this.message,
      required this.errors,
      required this.success,
      required this.token,
      required this.data});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
