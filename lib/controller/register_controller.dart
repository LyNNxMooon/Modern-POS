// ignore_for_file: use_build_context_synchronously, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/controller/value_holder_controller.dart';

import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';

final _valueHolder = Get.put(ValueHolderController());

class RegisterController extends BaseController {
  final _model = Model();

  registerUser(String name, String phone, String password, String fcm,
      String confirmPassword, BuildContext context) {
    setLoadingState = LoadingState.loading;

    _model.registerUser(name, phone, password, fcm, confirmPassword).then(
      (value) {
        setLoadingState = LoadingState.complete;
        _valueHolder.userToken.value = value.token!;
        print(value.token!);
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
}
