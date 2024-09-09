// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/value_holder_controller.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/network/api/modern_pos_api.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent.dart';
import 'package:modern_pos/network/response/cred_update_response/cred_update_response.dart';
import 'package:modern_pos/network/response/error_response/error_response.dart';
import 'package:modern_pos/network/response/error_response/profile_image_error_response.dart';
import 'package:modern_pos/network/response/login_response/login_response.dart';
import 'package:modern_pos/network/response/password_update_response/password_update_response.dart';
import 'package:modern_pos/network/response/profile_image_upload_response/profile_image_upload_response.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

class ModernPOSDataAgentImpl extends ModernPOSDataAgent {
  late ModernPOSAPI _modernPOSAPI;
  ModernPOSDataAgentImpl._() {
    _modernPOSAPI = ModernPOSAPI(Dio());
  }

  static final ModernPOSDataAgentImpl _singleton = ModernPOSDataAgentImpl._();
  factory ModernPOSDataAgentImpl() => _singleton;

  final _valueHolder = Get.put(ValueHolderController());

  @override
  Future<RegisterResponse> registerUserAccount(String name, String phone,
      String password, String fcm, String confirmPassword) async {
    try {
      return await _modernPOSAPI
          .registerUser(name, phone, password, fcm, confirmPassword)
          .asStream()
          .map((event) => event)
          .first;
    } on Exception catch (error) {
      return Future.error(throwException(error));
    }
  }

  @override
  Future<LoginResponse> loginUserAccount(
      String emailOrPhone, String password, String fcm) async {
    try {
      return await _modernPOSAPI
          .loginUser(emailOrPhone, password, fcm)
          .asStream()
          .map(
            (event) => event,
          )
          .first;
    } on Exception catch (error) {
      return Future.error(throwException(error));
    }
  }

  @override
  Future<UserVO> getUserProfile() async {
    try {
      print(_valueHolder.userToken.value);
      return await _modernPOSAPI
          .getUserProfile("Bearer ${_valueHolder.userToken.value}")
          .asStream()
          .map(
            (event) => event.data,
          )
          .first;
    } on Exception catch (error) {
      return Future.error(throwException(error));
    }
  }

  @override
  Future<PasswordUpdateResponse> updatePassword(
      String password, String newPassword, String confirmPassword) async {
    try {
      return await _modernPOSAPI
          .updatePassword("Bearer ${_valueHolder.userToken.value}", password,
              newPassword, confirmPassword)
          .asStream()
          .map(
            (event) => event,
          )
          .first;
    } on Exception catch (error) {
      return Future.error(throwException(error));
    }
  }

  @override
  Future<ProfileImageUploadResponse> uploadProfileImage(File imageFile) async {
    try {
      return await _modernPOSAPI
          .uploadProfileImage(
              "Bearer ${_valueHolder.userToken.value}", imageFile)
          .asStream()
          .map(
            (event) => event,
          )
          .first;
    } on Exception catch (error) {
      return Future.error(throwException(error));
    }
  }

  @override
  Future<CredUpdateResponse> updateUserCred(
      String name, String phone, String email) async {
    try {
      return await _modernPOSAPI
          .updateUserCred(
              "Bearer ${_valueHolder.userToken}", name, phone, email)
          .asStream()
          .map(
            (event) => event,
          )
          .first;
    } on Exception catch (error) {
      return Future.error(throwException(error));
    }
  }

  Object throwException(dynamic error) {
    if (error is DioException) {
      if (error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        return "Unable to connect to the server. Please check your internet connection and try again.";
      }
      if (error.response?.data is Map<String, dynamic>) {
        try {
          print(error.response?.data);
          if (error.response?.data["error"] == null) {
            final errorResponse =
                ErrorResponse.fromJson(jsonDecode(error.response.toString()));
            return errorResponse.message;
          } else {
            final errorResponse = ProfileImageErrorResponse.fromJson(
                jsonDecode(error.response.toString()));
            return errorResponse.error;
          }
        } catch (error) {
          return error.toString();
        }
      }
      return error.response.toString();
    }
    return error.toString();
  }
}
