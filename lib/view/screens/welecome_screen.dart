import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/routes.dart';
import '../../utils/theme.dart';
import '../widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: TextUtils(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    text: "Welcome",
                    color: Colors.white,
                        underLine: TextDecoration.none,

                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      TextUtils(
                          text: "Asroo",
                          fontSize: 35,
                          underLine: TextDecoration.none,

                          fontWeight: FontWeight.bold,
                          color: mainColor),
                      SizedBox(
                        width: 7,
                      ),
                      TextUtils(
                          text: "Shop",
                          underLine: TextDecoration.none,

                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.offNamed(Routes.loginScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                  ),
                  child:   const TextUtils(
                      text: "Get Start",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      underLine: TextDecoration.none,

                      color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const TextUtils(
                        text: "don't have an account?",
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        underLine: TextDecoration.none,
                        color: Colors.white),
                    TextButton(
                        child: const TextUtils(
                            text: "Sign Up",
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            underLine: TextDecoration.underline,
                            color: Colors.white),
                    onPressed: (){
                          Get.offNamed(Routes.signUpScreen);

                    },),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
