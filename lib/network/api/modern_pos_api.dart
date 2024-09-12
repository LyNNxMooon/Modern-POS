import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:modern_pos/network/api_constant.dart';
import 'package:modern_pos/network/response/category_response/category_response.dart';
import 'package:modern_pos/network/response/cred_update_response/cred_update_response.dart';
import 'package:modern_pos/network/response/item_detail_response/item_detail_response.dart';
import 'package:modern_pos/network/response/item_response/item_response.dart';
import 'package:modern_pos/network/response/login_response/login_response.dart';
import 'package:modern_pos/network/response/password_update_response/password_update_response.dart';
import 'package:modern_pos/network/response/profile_image_upload_response/profile_image_upload_response.dart';
import 'package:modern_pos/network/response/profile_response/profile_response.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'modern_pos_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class ModernPOSAPI {
  factory ModernPOSAPI(Dio dio) => _ModernPOSAPI(dio);

  @POST(kEndPointForRegister)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<RegisterResponse> registerUser(
    @Field("name") String name,
    @Field("phone") String phone,
    @Field("password") String password,
    @Field("fcm_token_key") String fcm,
    @Field("password_confirmation") String confirmPassword,
  );

  @POST(kEndPointForLogin)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<LoginResponse> loginUser(@Field("emailOrPhone") String emailOrPhone,
      @Field("password") String password, @Field("fcm_token_key") String fcm);

  @GET(kEndPointForUserProfile)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<ProfileResponse> getUserProfile(
      @Header(kAuthorizationKey) String token);

  @PUT(kEndPointForUpdatePassword)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<PasswordUpdateResponse> updatePassword(
    @Header(kAuthorizationKey) String token,
    @Query(kQueryParamKeyForOldPassword) String password,
    @Query(kQueryParamKeyForNewPassword) String newPassword,
    @Query(kQueryParamKeyForConfirmPassword) String confirmPassword,
  );

  @PUT(kEndPointForUserCredUpdate)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<CredUpdateResponse> updateUserCred(
    @Header(kAuthorizationKey) String token,
    @Query(kQueryParamKeyForName) String name,
    @Query(kQueryParamKeyForPhone) String phone,
    @Query(kQueryParamKeyForEmail) String email,
  );

  @MultiPart()
  @POST(kEndPointForProfileImageUpload)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<ProfileImageUploadResponse> uploadProfileImage(
      @Header(kAuthorizationKey) String token, @Part(name: "image") File image);

  @GET(kEndPointForItems)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<ItemResponse> getItems(
      @Header(kAuthorizationKey) String token,
      @Query(kQueryParamKeyForPage) int page,
      @Query(kQueryParamKeyForLimit) int limit);

  @GET(kEndPointForItems)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<ItemResponse> getItemsByCategory(
      @Header(kAuthorizationKey) String token,
      @Query(kQueryParamKeyForPage) int page,
      @Query(kQueryParamKeyForLimit) int limit,
      @Query(kQueryParamKeyForCategoryID) int categoryID);

  @GET(kEndPointForItemDetails)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<ItemDetailResponse> getItemDetails(
      @Header(kAuthorizationKey) String token,
      @Path(kPathParamKeyForProductID) int productID);

  @GET(kEndPointForCategories)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<CategoryResponse> getCategories(
    @Header(kAuthorizationKey) String token,
  );
}
