import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/images.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/profile_controller.dart';
import 'package:modern_pos/data/vos/user_vo/user_vo.dart';
import 'package:modern_pos/screens/change_password.dart';
import 'package:modern_pos/screens/profile_update.dart';
import 'package:modern_pos/widgets/buttons.dart';
import 'package:modern_pos/widgets/load_fail_widget.dart';
import 'package:modern_pos/widgets/loading_state_widget.dart';
import 'package:modern_pos/widgets/loading_widget.dart';
import 'package:modern_pos/widgets/password_permission_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Text(
            "Personal Profile",
            style: titleStyle,
          ),
        ),
        Obx(
          () => LoadingStateWidget(
              loadingState: _profileController.getLoadingState,
              loadingSuccessWidget:
                  profileWidget(context, _profileController.user),
              loadingInitWidget: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
                child: LoadFailWidget(
                  function: () {
                    _profileController.getUserProfile(context);
                  },
                ),
              )),
        )
      ],
    );
  }

  Widget userCred(BuildContext context, String type, String value) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: "$type : ",
              style: const TextStyle(
                  color: kFourthColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
          TextSpan(
              text: value,
              style: const TextStyle(fontSize: 16, color: kSecondaryColor)),
        ],
      ),
    );
  }

  Widget profileWidget(BuildContext context, UserVO user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(50),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              border: Border.all(color: kFourthColor, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(90))),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(90)),
              child: CachedNetworkImage(
                imageUrl: user.imgURL.isEmpty ? kPlaceHolderImage : user.imgURL,
                fit: BoxFit.fill,
                placeholder: (context, url) => const LoadingWidget(),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(Icons.error),
                ),
              )),
        ),
        const Gap(35),
        userCred(context, "Name", user.name),
        const Gap(15),
        userCred(context, "Phone", user.phone),
        const Gap(15),
        userCred(context, "Email", user.email.isEmpty ? " - " : user.email),
        const Gap(35),
        CustomButton(
            name: "Update Profile",
            function: () {
              showDialog(
                context: context,
                builder: (context) =>
                    const PasswordPermissionWidget(widget: ProfileUpdatePage()),
              );
            }),
        const Gap(15),
        CustomButton(
            name: "Change Password",
            function: () {
              Get.to(() => const ChangePasswordPage());
            }),
        const Gap(15),
        CustomButton(
            name: "Logout",
            function: () => _profileController.logoutUserAccount()),
        const Gap(50),
      ],
    );
  }
}
