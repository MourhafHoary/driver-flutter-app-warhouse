import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' ;

class PasswordController extends GetxController {

  final passwordController = TextEditingController();
  var isObscureNew = true.obs;
  var isObscureConfirm = true.obs;

  void toggleNew() {
    isObscureNew.value = !isObscureNew.value;
  }

  void toggleConfirm() {
    isObscureConfirm.value = !isObscureConfirm.value;
  }
}
