import 'package:modern_pos/data/vos/register_vo/register_request_vo.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

abstract class ModernPOSDataAgent {
  Future<RegisterResponse> registerUserAccount(RegisterRequestVO request);
}
