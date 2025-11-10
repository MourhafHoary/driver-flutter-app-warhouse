import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/controllers/auth_controller/email_controller.dart';
import 'package:untitled1/controllers/auth_controller/password_controller.dart';
import 'package:untitled1/core/routes/app_routes.dart';
import 'package:untitled1/gen/fonts.gen.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import '../../../core/component/custom_filed_button.dart';
import '../../../core/component/custom_text_filed.dart';
import '../../../core/locallization/app_text.dart';
import '../../../core/theme/app_colors.dart';

class LoginForm extends StatelessWidget {
   LoginForm({super.key});

  final EmailController controller = Get.put(EmailController());
  final PasswordController controllerp = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         AppText(Trans(LocaleKeys.login_email).tr, fontFamily: FontFamily.inter,style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
        SizedBox(height: 8.h),
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
        AppText(Trans(LocaleKeys.login_password).tr, fontFamily: FontFamily.inter,),
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
        SizedBox(height: 12.h),
        Row(
          children: [
             AppText(
              Trans(LocaleKeys.login_wrong).tr,
              fontFamily: FontFamily.inter,
              style: const TextStyle(color: AppColors.surface),
            ),
            SizedBox(width: 119.w),
             InkWell(
               onTap: (){
                 context.push(AppRoutes.forget);
               },
                child: AppText(
                  Trans(LocaleKeys.login_forget).tr,
                  fontFamily: FontFamily.inter,
                  style: const TextStyle(color: AppColors.primary),
                ))
          ],
        ),
        SizedBox(height: 18.h,),
         CustomFiledButton(
          text: Trans(LocaleKeys.login_continue).tr,
        ),
      ],
    );
  }
}
