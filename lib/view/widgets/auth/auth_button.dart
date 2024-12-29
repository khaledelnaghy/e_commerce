import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/theme.dart';
import '../text_utils.dart';

class AuthButton extends StatelessWidget {

  final String text;

  final Function() onPressed;

  const AuthButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Get.isDarkMode ? mainColor : pinkClr,
        maximumSize: const Size(360, 50),
      ),
      child:  TextUtils(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          underLine: TextDecoration.none),
    );
  }
}
