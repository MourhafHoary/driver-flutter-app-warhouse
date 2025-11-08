import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, this.suffixIcon, this.keyBoardType,  this.obscureText=false});
  final Widget? suffixIcon;
  final TextInputType?  keyBoardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey, // اللون عند عدم التركيز
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.blue, // اللون عند التركيز (بدل البنفسجي)
            width: 2,
          ),
        ),
          suffixIcon : suffixIcon,
      ),
      keyboardType: keyBoardType,
      obscureText: obscureText,
    );
  }
}
