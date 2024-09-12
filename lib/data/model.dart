import 'dart:io';

import 'package:modern_pos/data/vos/category_vo/category_vo.dart';
import 'package:modern_pos/data/vos/item_vo/item_brand_vo.dart';
import 'package:modern_pos/data/vos/item_vo/item_vo.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent.dart';
import 'package:modern_pos/network/data_agent/modern_pos_data_agent_impl.dart';
import 'package:modern_pos/network/response/cred_update_response/cred_update_response.dart';
import 'package:modern_pos/network/response/item_response/item_response.dart';
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

  Future<List<CategoryVO>> getCategories() async {
    try {
      return await _modernPOSDataAgent.getCategories().then(
        (value) {
          var temp = value;
          temp = temp.map(
            (item) {
              item.orderIndex = item.orderIndex ?? 0;
              item.createdAt =
                  (item.createdAt?.isEmpty ?? true) ? " - " : item.createdAt;
              return item;
            },
          ).toList();
          return temp;
        },
      );
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<ItemVO> getItemDetails(int id) async {
    try {
      return await _modernPOSDataAgent.getItemDetails(id).then(
        (value) {
          var item = value;
          item.barcode = (item.barcode?.isEmpty ?? true) ? " - " : item.barcode;
          item.description =
              (item.description?.isEmpty ?? true) ? " - " : item.description;
          item.brand = item.brand ?? ItemBrandVO(id: 0, name: " - ");
          return item;
        },
      );
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<ItemResponse> getItemsByCategory(
      int page, int limit, int categoryID) async {
    try {
      return await _modernPOSDataAgent
          .getItemsByCategory(page, limit, categoryID)
          .then(
        (value) {
          var temp = value;
          temp.data = temp.data.map(
            (item) {
              item.barcode =
                  (item.barcode?.isEmpty ?? true) ? " - " : item.barcode;
              item.description = (item.description?.isEmpty ?? true)
                  ? " - "
                  : item.description;
              item.brand = item.brand ?? ItemBrandVO(id: 0, name: " - ");
              return item;
            },
          ).toList();
          return temp;
        },
      );
    } on Exception catch (error) {
      return Future.error(error);
    }
  }

  Future<ItemResponse> getItems(int page, int limit) async {
    try {
      return await _modernPOSDataAgent.getItems(page, limit).then(
        (value) {
          var temp = value;
          temp.data = temp.data.map(
            (item) {
              item.barcode =
                  (item.barcode?.isEmpty ?? true) ? " - " : item.barcode;
              item.description = (item.description?.isEmpty ?? true)
                  ? " - "
                  : item.description;
              item.brand = item.brand ?? ItemBrandVO(id: 0, name: " - ");
              return item;
            },
          ).toList();
          return temp;
        },
      );
    } on Exception catch (error) {
      return Future.error(error);
    }
  }
}
