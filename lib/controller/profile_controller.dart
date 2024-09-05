import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/persistent/hive_dao.dart';
import 'package:modern_pos/screens/login.dart';

class ProfileController extends BaseController {
  final _hiveDAO = HiveDao();
  logoutUserAccount() {
    _hiveDAO.saveUserEmailOrPhone("");
    _hiveDAO.saveUserPassword("");
    Get.offAll(() => const LoginPage());
  }
}
