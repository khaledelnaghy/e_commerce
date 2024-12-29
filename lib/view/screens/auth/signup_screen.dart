
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../logic/controllers/auth_controller.dart';
import '../../../routes/routes.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/auth/container_under.dart';
import '../../widgets/auth/text_auth_form_field.dart';
import '../../widgets/text_utils.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final fromKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.find<AuthController>();

// final controllers = Get.lazyPut(()=> AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        elevation: 0.0,
      ),
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      body: SingleChildScrollView(
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextUtils(
                              text: "SIGN",
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Get.isDarkMode ? mainColor : pinkClr,
                              underLine: TextDecoration.none),
                          const SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                              text: "Up",
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color:
                                  Get.isDarkMode ? Colors.black : Colors.white,
                              underLine: TextDecoration.none),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AuthTextFormField(
                        controller: nameController,
                        isHidden: false,
                        validator: (value) {
                          if (value.toString().length <= 2 ||
                              RegExp(validationName).hasMatch(value)) {
                            return "Enter valid name";
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? Image.asset("assets/images/user.png")
                            : const Icon(
                                Icons.person,
                                color: pinkClr,
                                size: 30,
                              ),
                        suffixIcon: const Text(""),
                        hintText: "User Name",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: emailController,
                        isHidden: false,
                        validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return "Invalid Email";
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? Image.asset("assets/images/email.png")
                            : const Icon(
                                Icons.email,
                                color: pinkClr,
                                size: 30,
                              ),
                        suffixIcon: const Text(""),
                        hintText: "Email",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_){
                        return                       AuthTextFormField(
                          controller: passwordController,
                          isHidden: controller.isVisibility ?false :true,
                          validator: (value) {
                            if (value.toString().length < 6) {
                              return "Password Should be longer or equal to 6 characters";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? Image.asset("assets/images/lock.png")
                              : const Icon(
                            Icons.lock,
                            color: pinkClr,
                            size: 30,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.visibility();
                            },
                            icon:controller.isVisibility? const Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            ):const Icon(Icons.visibility ,color: Colors.black,),
                          ),
                          hintText: "Password",
                        );

                      }),
                      const SizedBox(
                        height: 50,
                      ),
                       CheckWidget(),
                      const SizedBox(
                        height: 50,
                      ),
                      AuthButton(
                        onPressed: () {},
                        text: "SIGN UP",
                      ),
                    ],
                  ),
                ),
              ),
              ContainerUnder(
                text: "Already have an Account? ",
                textType: "Log in",
                onPressed: () {
                  Get.offNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
