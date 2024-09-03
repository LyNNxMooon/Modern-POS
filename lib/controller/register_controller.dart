// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/controller/value_holder_controller.dart';
import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';

class RegisterController extends BaseController {
  final _model = Model();
  final holder = ValueHolderController();

  registerUser(String name, String phone, String password, String fcm,
      String confirmPassword, BuildContext context) {
    if (name.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      showDialog(
        context: context,
        builder: (context) =>
            const CustomErrorWidget(errorMessage: "Fill all the fields!"),
      );
    } else {
      setLoadingState = LoadingState.loading;
      _model.registerUser(name, phone, password, fcm, confirmPassword).then(
        (value) {
          if (value.message != null) {
            setLoadingState = LoadingState.error;
            setErrorMessage = value.message!;
            showDialog(
              context: context,
              builder: (context) =>
                  CustomErrorWidget(errorMessage: getErrorMessage),
            );
          } else {
            setLoadingState = LoadingState.complete;
            holder.userToken = value.token!;
            print(value.token!);
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
            setErrorMessage = "Invalid Inputs";
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
}
