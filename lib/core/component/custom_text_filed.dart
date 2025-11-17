import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    this.suffixIcon,
    this.keyBoardType,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.errorText,
  });

  final Widget? suffixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyBoardType,
          decoration: InputDecoration(
            // === Border ===
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),

            // error border
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),

            suffixIcon: suffixIcon,

            errorStyle: const TextStyle(
              fontSize: 12,
              height: 1.0,
              color: Colors.red,
            ),

            errorText: errorText,
          ),
        ),

        // إمكانية إضافة مساحة بسيطة تحت الخطأ
        if (errorText != null && errorText!.isNotEmpty)
          const SizedBox(height: 4),
      ],
    );
  }
}
