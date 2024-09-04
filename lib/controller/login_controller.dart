// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/data/value_holder.dart';
import 'package:modern_pos/persistent/hive_dao.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';

class LoginController extends BaseController {
  final _model = Model();
  final _valueHolder = ValueHolder();
  final _hiveDAO = HiveDao();
  RxBool isUser = false.obs;

  loginUser(
      String emailOrPhone, String password, String fcm, BuildContext context) {
    if (emailOrPhone.isEmpty || password.isEmpty) {
      showDialog(
        context: context,
        builder: (context) =>
            const CustomErrorWidget(errorMessage: "Fill all the fields!"),
      );
    } else {
      setLoadingState = LoadingState.loading;
      _model.loginUser(emailOrPhone, password, fcm).then(
        (value) {
          if (value.token == null) {
            setLoadingState = LoadingState.error;
            setErrorMessage = "Wrong credentials or password!";
            showDialog(
              context: context,
              builder: (context) =>
                  CustomErrorWidget(errorMessage: getErrorMessage),
            );
          } else {
            setLoadingState = LoadingState.complete;
            _valueHolder.userToken = value.token ?? "";
            _hiveDAO.saveUserEmailOrPhone(emailOrPhone);
            _hiveDAO.saveUserPassword(password);
            Get.offAll(() => const HomePage());
          }
        },
      ).catchError((obj) {
        // non-200 error goes here.
        switch (obj.runtimeType) {
          case DioException:
            // Here's the sample to get the failed response error code and message
            final res = (obj as DioException).message;

            setLoadingState = LoadingState.error;
            setErrorMessage = "Wrong credentials or password!";
            showDialog(
              context: context,
              builder: (context) =>
                  CustomErrorWidget(errorMessage: getErrorMessage),
            );
            break;
          default:
            break;
        }
      });
    }

    update();
  }

  checkLoginUser() async {
    print(_hiveDAO.getUserEmailOrPassword);
    print(_hiveDAO.getUserPassword);

    _model
        .loginUser(_hiveDAO.getUserEmailOrPassword ?? "",
            _hiveDAO.getUserPassword ?? "", 'fcm')
        .then(
      (value) {
        print("----done-----");
        if (value.token == null) {
          isUser.value = false;
        } else {
          _valueHolder.userToken = value.token ?? '';
          isUser.value = true;
        }
      },
    ).catchError((obj) {
      print("----done but error-----");
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioException:

          // Here's the sample to get the failed response error code and message
          isUser.value = false;
          break;
        default:
          break;
      }
    });

    update();
  }
}
