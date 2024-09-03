import 'package:modern_pos/network/data_agent/modern_pos_data_agent.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent_impl.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

class Model {
  Model._();
  static final Model _singleton = Model._();
  factory Model() => _singleton;

  final ModernPOSDataAgent _modernPOSDataAgent = ModernPOSDataAgentImpl();

  Future<RegisterResponse> registerUser(String name, String phone,
          String password, String fcm, String confirmPassword) =>
      _modernPOSDataAgent.registerUserAccount(
          name, phone, password, fcm, confirmPassword);
}
