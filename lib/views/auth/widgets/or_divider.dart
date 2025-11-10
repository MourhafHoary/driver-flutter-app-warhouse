import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/translations/locale_keys.g.dart';

import '../../../core/theme/app_colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 98,
          height: 2,
          color: AppColors.white2,
        ),
        const SizedBox(width: 16),
         Text(
          LocaleKeys.login_or.tr(),
          style: const TextStyle(color: AppColors.white2),
        ),
        const SizedBox(width: 16),
        Container(
          width: 98,
          height: 2,
          color:  AppColors.white2,
        ),
      ],
    );
  }
}
