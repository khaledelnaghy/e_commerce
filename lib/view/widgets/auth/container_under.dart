import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/theme.dart';
import '../text_utils.dart';

  class ContainerUnder extends StatelessWidget {
    final String text;

    final Function()onPressed;
    final String textType;

  const ContainerUnder({Key? key, required, required this.onPressed, required this.text , required this.textType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration:  BoxDecoration(
        color: Get.isDarkMode ?mainColor :pinkClr,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),
        topRight: Radius.circular(20),),),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(text: text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underLine: TextDecoration.none,),
          TextButton(onPressed: onPressed, child:TextUtils(text: textType,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            underLine: TextDecoration.none,),
          ),
        ],
      ),
    );
  }
}
