import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 98,
          height: 2,
          color: AppColors.white2,
        ),
        const SizedBox(width: 16),
        const Text(
          'Or',
          style: TextStyle(color: AppColors.white2),
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
