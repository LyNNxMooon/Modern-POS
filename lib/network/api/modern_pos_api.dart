import 'package:dio/dio.dart';
import 'package:modern_pos/data/vos/register_vo/register_request_vo.dart';
import 'package:modern_pos/network/api/error_logger.dart';
import 'package:modern_pos/network/api_constant.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';
import 'package:retrofit/http.dart';
part 'modern_pos_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class ModernPOSAPI {
  factory ModernPOSAPI(Dio dio) => _ModernPOSAPI(dio);

  @POST(kEndPointForRegister)
  Future<RegisterResponse> registerUser(@Body() RegisterRequestVO request);
}
