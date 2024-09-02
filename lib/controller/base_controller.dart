import 'package:get/get.dart';
import 'package:modern_pos/utils/enum.dart';

class BaseController extends GetxController {
  LoadingState _loadingState = LoadingState.init;
  String? _errorMessage;

  LoadingState get getLoadingState => _loadingState;
  String? get getErrorMessage => _errorMessage;

  set setLoadingState(LoadingState loadingState) =>
      _loadingState = loadingState;

  set setErrorMessage(String message) => _errorMessage = message;
}
