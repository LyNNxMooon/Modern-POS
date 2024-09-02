import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/controller/value_holder_controller.dart';
import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/data/vos/register_vo/register_request_vo.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/utils/enum.dart';

class RegisterController extends BaseController {
  final _model = Model();
  final holder = ValueHolderController();

  registerUser(RegisterRequestVO request) {
    setLoadingState = LoadingState.loading;
    _model.registerUser(request).then(
      (value) {
        if (value.message != null) {
          setLoadingState = LoadingState.error;
          setErrorMessage = value.message!;
        } else {
          setLoadingState = LoadingState.complete;
          holder.userToken = value.token!;
          Get.offAll(() => const HomePage());
        }
      },
    );

    update();
  }
}
