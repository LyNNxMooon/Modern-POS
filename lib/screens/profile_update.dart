import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/profile_controller.dart';
import 'package:modern_pos/widgets/buttons.dart';
import 'package:modern_pos/widgets/loading_state_widget.dart';
import 'package:modern_pos/widgets/profile_image_widget.dart';
import 'package:modern_pos/widgets/textfield.dart';

final _profileController = Get.put(ProfileController());

class ProfileUpdatePage extends StatefulWidget {
  const ProfileUpdatePage({super.key});

  @override
  State<ProfileUpdatePage> createState() => _ProfileUpdatePageState();
}

class _ProfileUpdatePageState extends State<ProfileUpdatePage> {
  final _nameController =
      TextEditingController(text: _profileController.user.name);
  final _phoneController =
      TextEditingController(text: _profileController.user.phone);
  final _emailController =
      TextEditingController(text: _profileController.user.email);

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const Gap(30),
            const Center(
              child: Text(
                "Update Your Profile",
                style: titleStyle,
              ),
            ),
            const Gap(50),
            Obx(
              () => GestureDetector(
                onTap: () {
                  _profileController.showPictureDialog(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.22),
                  height: 160,
                  decoration: BoxDecoration(
                      border: Border.all(color: kFourthColor, width: 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(90))),
                  child: _profileController.imageFile.value == null
                      ? ProfileImageWidget(img: _profileController.user.imgURL)
                      : ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(90)),
                          child: Image.file(
                            _profileController.imageFile.value!,
                            fit: BoxFit.cover,
                          )),
                ),
              ),
            ),
            const Gap(30),
            Obx(
              () => LoadingStateWidget(
                  loadingState: _profileController.getLoadingState,
                  loadingSuccessWidget: CustomButton(
                    name: "Upload",
                    function: () {
                      _profileController.uploadProfileImage(context);
                    },
                  ),
                  loadingInitWidget: CustomButton(
                    name: "Upload",
                    function: () {
                      _profileController.uploadProfileImage(context);
                    },
                  )),
            ),
            const Gap(50),
            CustomTextField(
                hintText: "Enter name to update",
                label: "Name",
                controller: _nameController),
            const Gap(20),
            CustomTextField(
                hintText: "Enter phone to update",
                label: "Phone",
                controller: _phoneController),
            const Gap(20),
            CustomTextField(
                hintText: "Enter email to update",
                label: "Email",
                controller: _emailController),
            const Gap(30),
            Obx(
              () => LoadingStateWidget(
                  loadingState: _profileController.getLoadingState,
                  loadingSuccessWidget: CustomButton(
                    name: "Update",
                    function: () {
                      _profileController.updateUserCred(_nameController,
                          _phoneController, _emailController, context);
                    },
                  ),
                  loadingInitWidget: CustomButton(
                    name: "Update",
                    function: () {
                      _profileController.updateUserCred(_nameController,
                          _phoneController, _emailController, context);
                    },
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
