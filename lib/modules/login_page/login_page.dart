import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/application/constants/custom_buttom.dart';
import 'package:wise/application/constants/custom_text_buttom.dart';
import 'package:wise/modules/login_page/login_controller.dart';
import 'package:wise/modules/login_page/widget/custom_texfield.dart';
import 'package:wise/modules/login_page/widget/login_text_header_widget.dart';
import 'widget/login_with_buttom.dart';

/// We use LOGIN PAGE to organize all the custom
/// widgets we have create for this page
///

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),

            // lOG IN TEXT HEADER

            const LoginTextHeaderWidget(),
            const SizedBox(height: 40),

            // CUSTOM TEXTFIELD

            const CustomTexfield(
              label: 'Your email',
              obscureText: false,
            ),

            // CUSTOM TEXTFIELD

            const CustomTexfield(
              label: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 25),

            // CUSTOM BUTTOM

            CustomButtom(
              label: 'Log in',
              onPressed: () => controller.goToHomePage(),
              width: Get.width,
              color: buttomColor,
            ),
            const SizedBox(height: 15),

            // TEXT BUTTOM FORGOT PASSWORD

            const CustomTextButtom(label: 'Forgot Password'),

            // We use a empty container and expande widget
            // to pull the 3 Buttons to the bottom od the page

            Expanded(child: Container()),
            Column(
              children: [
                // TEXT  'Or log in with'

                const Text('Or log in with'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    // LOGIN WITH SOCIAL MEDIA

                    // Log in with Apple
                    LoginWithButtom(
                      imagePath: 'assets/images/apple.png',
                      onPressed: () => print(
                        'Log in with Apple',
                      ),
                    ),

                    // Log in with Facebook

                    LoginWithButtom(
                      imagePath: 'assets/images/facebook.png',
                      onPressed: () => print('Log in with Facebook'),
                    ),

                    // Log in with Gmail

                    LoginWithButtom(
                      imagePath: 'assets/images/gmail.png',
                      onPressed: () => print('Log in with Gmail'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
