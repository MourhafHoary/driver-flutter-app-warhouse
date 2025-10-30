import 'package:flutter/material.dart';

import '../../../core/component/custom_outline.dart';
import '../../../core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';

class AdditionalLogin extends StatelessWidget {
  const AdditionalLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOutline(
            text: 'Login With Apple',
            imagebath: Assets.images.png.auth.apple.path),
        const SizedBox(height: 16),
        CustomOutline(
            text: 'Login with Google',
            imagebath: Assets.images.png.auth.google.path),
        const SizedBox(height: 36),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account? "),
            InkWell(
                child: Text(
                  "SignUp",
                  style: TextStyle(color: AppColors.primary),
                ))
          ],
        ),
      ],
    );
  }
}
