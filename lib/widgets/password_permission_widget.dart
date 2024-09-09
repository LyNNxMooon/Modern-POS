import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/persistent/hive_dao.dart';
import 'package:modern_pos/widgets/textfield.dart';

class PasswordPermissionWidget extends StatefulWidget {
  const PasswordPermissionWidget({super.key, required this.function});

  final Function function;

  @override
  State<PasswordPermissionWidget> createState() =>
      _PasswordPermissionWidgetState();
}

class _PasswordPermissionWidgetState extends State<PasswordPermissionWidget> {
  bool showPassword = false;
  final _passwordController = TextEditingController();
  final _hiveDAO = HiveDao();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actions: [
          Center(
            child: TextButton(
              onPressed: () {
                if (_passwordController.text == _hiveDAO.getUserPassword) {
                  _passwordController.clear();
                  Get.back();
                  widget.function();
                } else {
                  Fluttertoast.showToast(
                      msg: "Wrong Password!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(kSecondaryColor)),
              child: const Text(
                "OK",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          )
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              CupertinoIcons.padlock_solid,
              color: kFourthColor,
            ),
            const Gap(15),
            CustomTextField(
              controller: _passwordController,
              hintText: "Enter your Password",
              label: "Password",
              isObsecure: showPassword,
              suffixIcon: IconButton(
                  onPressed: () {
                    showPassword = !showPassword;
                    setState(() {});
                  },
                  icon: showPassword
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: kSecondaryColor,
                        )
                      : const Icon(
                          Icons.visibility_off_outlined,
                          color: kSecondaryColor,
                        )),
            ),
          ],
        ));
  }
}
