import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';

import '../initial_controller.dart';
import 'initial_content_widget.dart';

class SliderPageViewWidget extends GetView<InitialController> {
  const SliderPageViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.7,
          color: blueMainColor,
          child: Obx(
            () {
              return PageView.builder(
                itemCount: controller.globeSliderlist.length,
                itemBuilder: (context, index) {
                  return Initialcontent(
                    initialSliderModel: controller.globeSliderlist[index],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
