import 'package:get/get.dart';
import 'package:flutter/material.dart';

class EmailController extends GetxController {
  // 🔹 إنشاء TextEditingController لحقل الإيميل
  final emailController = TextEditingController();

  // 🔹 متغيّر لمراقبة صحة البريد
  final isEmailValid = false.obs;

  // 🔹 دالة للتحقق من صحة البريد
  void validateEmail(String value) {
    if (GetUtils.isEmail(value)) {
      isEmailValid.value = true;
    } else {
      isEmailValid.value = false;
    }
  }

  // 🔹 لا تنسَ تنظيف الذاكرة عند إغلاق الكنترولر
  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
