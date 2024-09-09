import 'dart:io';

import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent_impl.dart';
import 'package:modern_pos/network/response/cred_update_response/cred_update_response.dart';
import 'package:modern_pos/network/response/login_response/login_response.dart';
import 'package:modern_pos/network/response/password_update_response/password_update_response.dart';
import 'package:modern_pos/network/response/profile_image_upload_response/profile_image_upload_response.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

//For null data replacement
class Model {
  Model._();
  static final Model _singleton = Model._();
  factory Model() => _singleton;

  final ModernPOSDataAgent _modernPOSDataAgent = ModernPOSDataAgentImpl();

  Future<RegisterResponse> registerUser(String name, String phone,
      String password, String fcm, String confirmPassword) async {
    try {
      return await _modernPOSDataAgent.registerUserAccount(
          name, phone, password, fcm, confirmPassword);
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<LoginResponse> loginUser(
      String emailOrPhone, String password, String fcm) async {
    try {
      return await _modernPOSDataAgent.loginUserAccount(
          emailOrPhone, password, fcm);
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<UserVO> getUserProfile() async {
    try {
      return await _modernPOSDataAgent.getUserProfile();
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<PasswordUpdateResponse> updatePassword(
      String password, String newPassword, String confirmPassword) async {
    try {
      return await _modernPOSDataAgent.updatePassword(
          password, newPassword, confirmPassword);
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<ProfileImageUploadResponse> uploadProfileImage(File imageFile) async {
    try {
      return await _modernPOSDataAgent.uploadProfileImage(imageFile);
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<CredUpdateResponse> updateUserCred(
      String name, String phone, String email) async {
    try {
      return await _modernPOSDataAgent.updateUserCred(name, phone, email);
    } on Exception catch (error) {
      return Future.error(error);
    }
  }
}
