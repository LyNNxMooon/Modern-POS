import 'package:dio/dio.dart';
import 'package:modern_pos/network/api_constant.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'modern_pos_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class ModernPOSAPI {
  factory ModernPOSAPI(Dio dio) => _ModernPOSAPI(dio);

  @POST(kEndPointForRegister)
  Future<RegisterResponse> registerUser(
    @Field("name") String name,
    @Field("phone") String phone,
    @Field("password") String password,
    @Field("fcm_token_key") String fcm,
    @Field("password_confirmation") String confirmPassword,
  );
}
