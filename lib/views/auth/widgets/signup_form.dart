import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/controllers/auth_controller/email_controller.dart';
import 'package:untitled1/controllers/auth_controller/password_controller.dart';
import 'package:untitled1/controllers/auth_controller/username_controller.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/component/custom_text_filed.dart';
import 'package:untitled1/gen/fonts.gen.dart';
import 'package:untitled1/models/auth_model/signup.dart';

import '../../../core/locallization/app_text.dart';
import '../../../translations/locale_keys.g.dart';
import 'login_form.dart';

class SignUpForm extends StatelessWidget {
   SignUpForm({super.key});

  final EmailController controller = Get.put(EmailController());
  final PasswordController controllerp = Get.put(PasswordController());
  final UsernameController controlleru = Get.put(UsernameController());

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        AppText(Trans(LocaleKeys.login_username).tr, fontFamily: FontFamily.inter,style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
         SizedBox(height: 8.h),
          CustomTextFiled(
           controller: controlleru.usernameController,
            onChanged: controlleru.validateUsername,
         ),
          Obx( () => Align(
            alignment: Alignment.centerRight,
            child: Text(
              controlleru.isValid.value
                  ? 'Valid username'
                  : 'Username must be at least 3 characters',
              style: TextStyle(
                color: controlleru.isValid.value
                    ? Colors.green
                    : Colors.red,

              ),
            ),
          )
          ),
         SizedBox(height: 16.h,),
         AppText(Trans(LocaleKeys.login_email).tr, fontFamily: FontFamily.inter,),
         SizedBox(height: 8.h,),
          CustomTextFiled(
          keyBoardType: TextInputType.emailAddress,
          controller: controller.emailController,
            onChanged: controller.validateEmail,
          ),
          Obx( () => Align(
            alignment: Alignment.centerRight,
            child: Text(
              controller.isEmailValid.value
                  ? 'Valid email'
                  : 'Invalid email',
              style: TextStyle(
                color: controller.isEmailValid.value
                    ? Colors.green
                    : Colors.red,

              ),
            ),
          )
          ),
          SizedBox(height: 16.h,),
         AppText(Trans(LocaleKeys.login_password).tr, fontFamily: FontFamily.inter),
          SizedBox(height: 8.h,),
          Obx( ()=> CustomTextFiled(
            keyBoardType: TextInputType.visiblePassword,
            obscureText: controllerp.isObscureNew.value,
            suffixIcon: InkWell(
              onTap: controllerp.toggleNew,
              child: Icon(
                controllerp.isObscureNew.value
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
          ),
          SizedBox(height: 16.h,),
         AppText(Trans(LocaleKeys.login_confirm).tr, fontFamily: FontFamily.inter),
          SizedBox(height: 8.h,),
          Obx(() => CustomTextFiled(
            keyBoardType: TextInputType.visiblePassword,
            obscureText: controllerp.isObscureConfirm.value,
            suffixIcon: InkWell(
              onTap: controllerp.toggleConfirm,
              child: Icon(
                controllerp.isObscureConfirm.value
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          )),
          SizedBox(height: 35.h,),
         CustomFiledButton(
           text: Trans(LocaleKeys.login_continue).tr,
         onPressed: () async {
            await signUp();
         },
         )
    ]
    );
  }
}
