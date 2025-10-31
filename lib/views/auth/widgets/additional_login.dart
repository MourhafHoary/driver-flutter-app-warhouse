import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/component/custom_outline.dart';
import '../../../core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../translations/locale_keys.g.dart';

class AdditionalLogin extends StatelessWidget {
  const AdditionalLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOutline(
            text: LocaleKeys.login_apple.tr(),
            imagebath: Assets.images.png.auth.apple.path),
        const SizedBox(height: 16),
        CustomOutline(
            text: LocaleKeys.login_google.tr(),
            imagebath: Assets.images.png.auth.google.path),
        const SizedBox(height: 36),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.login_account.tr(),
            ),
            InkWell(
                child: Text(
                  LocaleKeys.login_signup.tr(),
                  style: TextStyle(color: AppColors.primary),
                ))
          ],
        ),
      ],
    );
  }
}
