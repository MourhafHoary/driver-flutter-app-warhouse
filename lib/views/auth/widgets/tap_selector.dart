import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/gen/fonts.gen.dart';
import 'package:untitled1/translations/locale_keys.g.dart';

class TapSelector extends StatelessWidget {
  final bool isLogin;
  final ValueChanged<bool> onChanged;

  const TapSelector({
    super.key,
    required this.isLogin,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 🔹 Login Tab
        GestureDetector(
          onTap: () => onChanged(true),
          child: Column(
            children: [
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: FontFamily.poppins,
                  color: isLogin ? AppColors.primary : Colors.grey,
                ),
                child:  AppText(LocaleKeys.login_Login.tr(), fontFamily: FontFamily.poppins,),
              ),
              const SizedBox(height: 6),
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: 130,
                height: 2,
                color: isLogin ? AppColors.primary : Colors.transparent,
              ),
            ],
          ),
        ),

        // 🔹 Signup Tab
        GestureDetector(
          onTap: () => onChanged(false),
          child: Column(
            children: [
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: FontFamily.poppins,
                  color: !isLogin ? AppColors.primary : Colors.grey,
                ),
                child:  Text(LocaleKeys.login_signup.tr()),
              ),
              const SizedBox(height: 6),
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: 130,
                height: 2,
                color: !isLogin ? AppColors.primary : Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
