import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  var isObscureNew = true.obs;
  var isObscureConfirm = true.obs;

  var isPasswordValid = false.obs;
  var passwordError = "".obs;

  var isConfirmValid = false.obs;
  var confirmError = "".obs;

  final _passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~%^()\[\]{}<>/?|+=_-]).{8,}$');

  void toggleNew() {
    isObscureNew.value = !isObscureNew.value;
  }

  void toggleConfirm() {
    isObscureConfirm.value = !isObscureConfirm.value;
  }

  void validatePassword(String value) {
    if (_passwordRegex.hasMatch(value)) {
      isPasswordValid.value = true;
      passwordError.value = "";
    } else {
      isPasswordValid.value = false;
      passwordError.value =
      "Password must include uppercase, lowercase, number, symbol and be at least 8 characters";
    }
    validateConfirm(confirmController.text);
  }
  void validateConfirm(String value) {
    if (value == passwordController.text) {
      isConfirmValid.value = true;
      confirmError.value = "";
    } else {
      isConfirmValid.value = false;
      confirmError.value = "Passwords do not match";
    }
  }
}
