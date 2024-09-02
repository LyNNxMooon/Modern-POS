import 'package:dio/dio.dart';
import 'package:modern_pos/data/vos/register_vo/register_request_vo.dart';
import 'package:modern_pos/network/api/modern_pos_api.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

class ModernPOSDataAgentImpl extends ModernPOSDataAgent {
  late ModernPOSAPI _modernPOSAPI;
  ModernPOSDataAgentImpl._() {
    _modernPOSAPI = ModernPOSAPI(Dio());
  }

  static final ModernPOSDataAgentImpl _singleton = ModernPOSDataAgentImpl._();
  factory ModernPOSDataAgentImpl() => _singleton;

  @override
  Future<RegisterResponse> registerUserAccount(RegisterRequestVO request) {
    return _modernPOSAPI
        .registerUser(request)
        .asStream()
        .map((event) => event)
        .first;
  }
}
