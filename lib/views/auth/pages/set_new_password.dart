import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/component/custom_text_filed.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/gen/fonts.gen.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import '../../../controllers/auth_controller/password_controller.dart';
import '../../../core/component/button_back.dart';

class SetNewPassword extends StatelessWidget {
  SetNewPassword({super.key});
  final PasswordController controller = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [Padding(
          padding: EdgeInsets.only(left:24.sp),
          child: const ButtonBack(),
        )],
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48.h),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: const Align(
                  alignment: Alignment.centerLeft,
                ),
              ),
              SizedBox(height: 26.h),
              AppText(
                Trans(LocaleKeys.login_setpass).tr,
                fontFamily: FontFamily.poppins,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 18.h),
              AppText(
                Trans(LocaleKeys.login_createpass).tr,
                fontFamily: FontFamily.inter,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.gray,
                ),
              ),
              SizedBox(height: 38.h),

              // Password field
              AppText(
                Trans(LocaleKeys.login_newpass).tr,
                fontFamily: FontFamily.inter,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.h),
             Obx(() => CustomTextFiled(
                keyBoardType: TextInputType.visiblePassword,
                obscureText: controller.isObscureNew.value,
                suffixIcon: InkWell(
                  onTap: controller.toggleNew,
                  child: Icon(
                    controller.isObscureNew.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              )),

              SizedBox(height: 16.h),

              // Confirm Password field
              AppText(
                Trans(LocaleKeys.login_confirmpass).tr,
                fontFamily: FontFamily.inter,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.h),
              Obx(() => CustomTextFiled(
                keyBoardType: TextInputType.visiblePassword,
                obscureText: controller.isObscureConfirm.value,
                suffixIcon: InkWell(
                  onTap: controller.toggleConfirm,
                  child: Icon(
                    controller.isObscureConfirm.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              )),

              SizedBox(height: 26.h),
              CustomFiledButton(text: Trans(LocaleKeys.login_updatepass).tr),
            ],
          ),
        ),
      ),
    );
  }
}
