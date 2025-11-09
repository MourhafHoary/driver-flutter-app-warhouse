import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/component/custom_text_filed.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/routes/app_routes.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import 'package:untitled1/core/component/button_back.dart';

import '../../../controllers/auth_controller/email_controller.dart';
import '../../../gen/fonts.gen.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final EmailController controller = Get.put(EmailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 24.sp),
              child: const ButtonBack(),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48.h),
              SizedBox(height: 26.h),
              const AppText(
                LocaleKeys.login_forget,
                fontFamily: FontFamily.poppins,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 18.h),
              const AppText(
                LocaleKeys.login_please,
                fontFamily: FontFamily.inter,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray),
              ),
              SizedBox(height: 30.h),
              AppText(
                Trans(LocaleKeys.login_email).tr,
                fontFamily: FontFamily.inter,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.h),
               CustomTextFiled(
                keyBoardType: TextInputType.emailAddress,
                 controller: controller.emailController,
                 onChanged: controller.validateEmail,

              ),
              Obx(() => Align(
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
              )),
              SizedBox(height: 26.h),

              InkWell(
                child: CustomFiledButton(text: Trans(LocaleKeys.login_reset).tr),
                onTap: () {
                  context.push(AppRoutes.check);
                },
              )
            ],
          ),
        ));
  }
}
