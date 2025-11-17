import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/controllers/auth_controller/email_controller.dart';
import 'package:untitled1/controllers/auth_controller/password_controller.dart';
import 'package:untitled1/core/App_config/Api_config.dart';
import 'package:untitled1/models/auth_model/crud.dart';

import '../../controllers/auth_controller/username_controller.dart';
import '../../core/routes/app_routes.dart';
Crud _crud = Crud() ;
final usernameController = Get.find<UsernameController>();
final emailController = Get.find<EmailController>();
final passwordController = Get.find<PasswordController>();
signUp(BuildContext context) async {
  var response = await _crud.postRequest(linkSignUp, {
    "username": usernameController.usernameController.text,
    "email": emailController.emailController.text,
    "password" : passwordController.passwordController.text
  }
  );
  if(response['status'] == "success"){
    context.go(AppRoutes.passrest);
  }else{
    print('SignUp fail') ;
  }
}