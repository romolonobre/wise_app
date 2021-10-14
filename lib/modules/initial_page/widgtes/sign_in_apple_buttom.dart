import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This Widget draws the SING IN APPLE BUTTTOM

class SignInAppleButtom extends StatelessWidget {
  const SignInAppleButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11),
      height: 48,
      width: Get.width,
      decoration: BoxDecoration(color: Colors.white),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// APPLE icon value
            ///
            Image.network(
              'https://1000logos.net/wp-content/uploads/2016/10/Apple_logo_PNG1.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 5),

            /// Buttom Label value

            const Text(
              'Sing in with Apple',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
