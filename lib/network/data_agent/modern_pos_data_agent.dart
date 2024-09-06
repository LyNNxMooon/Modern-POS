import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/network/response/login_response/login_response.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

abstract class ModernPOSDataAgent {
  Future<RegisterResponse> registerUserAccount(String name, String phone,
      String password, String fcm, String confirmPassword);

  Future<LoginResponse> loginUserAccount(
      String emailOrPhone, String password, String fcm);

  Future<UserVO> getUserProfile();
}
