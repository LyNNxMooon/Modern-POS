// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/controller/value_holder_controller.dart';
import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/persistent/hive_dao.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';

final _valueHolder = Get.put(ValueHolderController());

class LoginController extends BaseController {
  final _model = Model();

  final _hiveDAO = HiveDao();
  RxBool isUser = false.obs;

  loginUser(
      String emailOrPhone, String password, String fcm, BuildContext context) {
    setLoadingState = LoadingState.loading;
    _model.loginUser(emailOrPhone, password, fcm).then(
      (value) {
        setLoadingState = LoadingState.complete;
        _valueHolder.userToken.value = value.token ?? "";
        _hiveDAO.saveUserEmailOrPhone(emailOrPhone);
        _hiveDAO.saveUserPassword(password);
        Get.offAll(() => const HomePage());
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => CustomErrorWidget(
          errorMessage: getErrorMessage,
          function: () {
            Get.back();
          },
        ),
      );
    });

    update();
  }

  checkLoginUser() {
    _model
        .loginUser(_hiveDAO.getUserEmailOrPassword ?? "",
            _hiveDAO.getUserPassword ?? "", 'fcm')
        .then(
      (value) {
        _valueHolder.userToken.value = value.token ?? '';
        isUser.value = true;
      },
    ).catchError((_) {
      isUser.value = false;
    });
    update();
  }
}
