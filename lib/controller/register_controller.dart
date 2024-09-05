// ignore_for_file: use_build_context_synchronously, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';

import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/data/value_holder.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';

class RegisterController extends BaseController {
  final _model = Model();
  final holder = ValueHolder();

  registerUser(String name, String phone, String password, String fcm,
      String confirmPassword, BuildContext context) async {
    setLoadingState = LoadingState.loading;

    _model.registerUser(name, phone, password, fcm, confirmPassword).then(
      (value) {
        setLoadingState = LoadingState.complete;
        holder.userToken = value.token!;
        print(value.token!);
        Get.offAll(() => const HomePage());
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(errorMessage: getErrorMessage),
      );
    });

    update();
  }
}
