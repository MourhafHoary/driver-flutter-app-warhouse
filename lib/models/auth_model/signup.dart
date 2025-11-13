import 'package:get/get.dart';
import 'package:untitled1/controllers/auth_controller/email_controller.dart';
import 'package:untitled1/controllers/auth_controller/password_controller.dart';
import 'package:untitled1/core/App_config/Api_config.dart';
import 'package:untitled1/models/auth_model/crud.dart';
import 'package:untitled1/views/auth/pages/check_your_email.dart';

import '../../controllers/auth_controller/username_controller.dart';
Crud _crud = Crud() ;
final usernameController = Get.find<UsernameController>();
final emailController = Get.find<EmailController>();
final passwordController = Get.find<PasswordController>();
signUp() async {
  var response = await _crud.postRequest(linkSignUp, {
    "username": usernameController.usernameController.text,
    "email": emailController.emailController.text,
    "password" : passwordController.passwordController.text
  }
  );
  if(response['status'] == "success"){
    Get.to(CheckYourEmail());
  }else{
    print('SignUp fail') ;
  }
}