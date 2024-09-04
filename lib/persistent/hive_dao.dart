import 'package:hive/hive.dart';
import 'package:modern_pos/persistent/hive_constant.dart';

class HiveDao {
  HiveDao._();
  static final HiveDao _singleton = HiveDao._();
  factory HiveDao() => _singleton;

  Box<String> userEmailOrPhoneBox() =>
      Hive.box<String>(kHiveBoxForUserEmailOrPhone);

  Box<String> userPasswordBox() => Hive.box<String>(kHiveBoxForUserPassword);

  //save data
  void saveUserEmailOrPhone(String cred) {
    userEmailOrPhoneBox().put(kHiveKeyForUserEmailOrPhone, cred);
  }

  void saveUserPassword(String password) {
    userPasswordBox().put(kHiveKeyForUserPassword, password);
  }

  //get data
  String? get getUserEmailOrPassword =>
      userEmailOrPhoneBox().get(kHiveKeyForUserEmailOrPhone);

  String? get getUserPassword => userPasswordBox().get(kHiveKeyForUserPassword);
}
