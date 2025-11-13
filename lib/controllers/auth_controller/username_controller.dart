import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UsernameController extends GetxController {
  // TextEditingController مرتبط بحقل الإدخال
  final usernameController = TextEditingController();

  // متغير observable لحفظ صلاحية الاسم
  var isValid = true.obs;

  // التحقق من الاسم
  void validateUsername(String value) {
    String username = usernameController.text.trim();
    if (username.isEmpty || username.length < 3) {
      isValid.value = false;
    } else {
      isValid.value = true;
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    super.onClose();
  }
}
