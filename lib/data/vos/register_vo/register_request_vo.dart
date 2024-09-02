import 'package:json_annotation/json_annotation.dart';
part 'register_request_vo.g.dart';

@JsonSerializable()
class RegisterRequestVO {
  final String name;
  final String phone;
  final String password;
  @JsonKey(name: "fcm_token_key")
  final String fcm;
  @JsonKey(name: "password_confirmation")
  final String confirmPassword;

  RegisterRequestVO(
      {required this.name,
      required this.phone,
      required this.password,
      required this.fcm,
      required this.confirmPassword});

  Map<String, dynamic> toJson() => _$RegisterRequestVOToJson(this);
}
