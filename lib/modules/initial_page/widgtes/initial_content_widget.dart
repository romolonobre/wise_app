import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wise/application/models/initial_slider_model.dart';

import '../initial_controller.dart';

/// This Widget draws the initial slider content. This allow
/// us to have the slide organized. We used $InitialSliderModel
///

class Initialcontent extends GetView<InitialController> {
  final InitialSliderModel initialSliderModel;

  Initialcontent({Key? key, required this.initialSliderModel})
      : super(key: key);

  int actvindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ///Image Value
        ///

        Image.asset(
          initialSliderModel.imagePath,
          height: Get.height * 0.3,
          width: Get.width * 0.6,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),

          /// Title value
          ///

          child: Text(
            initialSliderModel.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: 20),

        /// Subtitle Value
        ///

        Text(
          initialSliderModel.subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
