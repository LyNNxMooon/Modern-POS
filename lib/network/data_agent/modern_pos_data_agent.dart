import 'dart:io';

import 'package:modern_pos/data/vos/category_vo/category_vo.dart';
import 'package:modern_pos/data/vos/item_vo/item_vo.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/network/response/cred_update_response/cred_update_response.dart';
import 'package:modern_pos/network/response/item_response/item_response.dart';
import 'package:modern_pos/network/response/login_response/login_response.dart';
import 'package:modern_pos/network/response/password_update_response/password_update_response.dart';
import 'package:modern_pos/network/response/profile_image_upload_response/profile_image_upload_response.dart';
import 'package:modern_pos/network/response/register_response/register_response.dart';

abstract class ModernPOSDataAgent {
  Future<RegisterResponse> registerUserAccount(String name, String phone,
      String password, String fcm, String confirmPassword);

  Future<LoginResponse> loginUserAccount(
      String emailOrPhone, String password, String fcm);

  Future<UserVO> getUserProfile();

  Future<PasswordUpdateResponse> updatePassword(
      String password, String newPassword, String confirmPassword);

  Future<ProfileImageUploadResponse> uploadProfileImage(File imageFile);

  Future<CredUpdateResponse> updateUserCred(
      String name, String phone, String email);

  Future<ItemResponse> getItems(int page, int limit);

  Future<ItemResponse> getItemsByCategory(int page, int limit, int categoryID);

  Future<ItemVO> getItemDetails(int productID);

  Future<List<CategoryVO>> getCategories();
}
