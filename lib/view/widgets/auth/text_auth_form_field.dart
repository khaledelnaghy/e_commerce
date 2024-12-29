import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {

  final TextEditingController controller;

  final bool isHidden;

  final Function validator;
  final String hintText;

  final Widget prefixIcon;
  final Widget suffixIcon;

  const AuthTextFormField({ required this.controller, required this.isHidden,
    required this.hintText,
    required this .validator, required this.prefixIcon, required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isHidden,
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText:hintText,
        helperStyle:  const TextStyle(
          color: Colors.black45,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );
  }
}
