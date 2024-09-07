// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/images.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/persistent/hive_dao.dart';
import 'package:modern_pos/screens/login.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';
import 'package:modern_pos/widgets/success_widget.dart';

class ProfileController extends BaseController {
  final _hiveDAO = HiveDao();
  final _model = Model();
  UserVO user = UserVO(
      id: 1,
      name: "User Name",
      phone: "User Phone",
      imgURL: kPlaceHolderImage,
      email: "User Email",
      fcm: "",
      isBanned: "0",
      createdAt: "");
  logoutUserAccount() {
    _hiveDAO.saveUserEmailOrPhone("");
    _hiveDAO.saveUserPassword("");
    Get.offAll(() => const LoginPage());

    update();
  }

  getUserProfile(BuildContext context) {
    setLoadingState = LoadingState.loading;
    _model.getUserProfile().then(
      (value) {
        user = value;
        setLoadingState = LoadingState.complete;
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(
            errorMessage: getErrorMessage,
            function: () {
              Get.back();
            }),
      );
    });

    update();
  }

  updatePassword(
      TextEditingController password,
      TextEditingController newPassword,
      TextEditingController confirmPassword,
      BuildContext context) {
    setLoadingState = LoadingState.loading;
    _model
        .updatePassword(password.text, newPassword.text, confirmPassword.text)
        .then(
      (value) {
        setLoadingState = LoadingState.complete;
        _hiveDAO.saveUserPassword(newPassword.text);
        password.clear();
        confirmPassword.clear();
        newPassword.clear();
        showDialog(
          context: context,
          builder: (context) => SuccessWidget(message: value.message),
        );
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(
            errorMessage: getErrorMessage,
            function: () {
              Get.back();
            }),
      );
    });

    update();
  }
}
