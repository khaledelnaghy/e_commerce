import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/text_auth_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();


  ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Forget Password",
          style: TextStyle(
            color: Get.isDarkMode ? mainColor : pinkClr,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back,
              color: Get.isDarkMode ? Colors.black : Colors.white),
        ),
      ),
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                    'If you want to recover your account, then please provide your email ID below..',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Get.isDarkMode ?Colors.black:Colors.white,
                ),),
                const SizedBox(height: 50,),
                Image.asset("assets/images/forgetpass copy.png",
                width: 250,),
                const SizedBox(height: 50,),
                AuthTextFormField(
                  controller: emailController,
                  isHidden: false,
                  validator: (value) {
                    if (!RegExp(validationEmail).hasMatch(value)) {
                      return 'Invalid email';
                    } else {
                      return null;
                    }
                  },
                  prefixIcon: Get.isDarkMode
                      ? const Icon(
                    Icons.email,
                    color: pinkClr,
                    size: 30,
                  )
                      : Image.asset('assets/images/email.png'),
                  suffixIcon: const Text(""),
                  hintText: 'Email',
                ),

                const SizedBox(height: 50,),
                AuthButton(text: "SEND", onPressed: (){}),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
