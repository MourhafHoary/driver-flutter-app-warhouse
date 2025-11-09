import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    this.suffixIcon,
    this.keyBoardType,
    this.obscureText = false,
    this.controller,
    this.onChanged,
  });

  final Widget? suffixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
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
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyBoardType,
      obscureText: obscureText,
    );
  }
}
