import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/modules/send_page/send_page.dart';

/// Custom FloatingButtom

class CustomFloatingButtom extends StatelessWidget {
  const CustomFloatingButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23,
      child: FloatingActionButton(
        onPressed: () => Get.toNamed('/send'),
        child: const Text(
          'Send',
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
