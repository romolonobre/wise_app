import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WiseCardContent extends StatelessWidget {
  final String imagePath;
  final Color cardColor;
  final String cardNumber;
  final String expiryDate;
  final String cardType;
  final double topBottom;
  final double leftRigh;

  const WiseCardContent({
    Key? key,
    required this.imagePath,
    required this.cardColor,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardType,
    required this.topBottom,
    required this.leftRigh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: Get.width * 0.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cardColor),
        ),
        Positioned(
          left: leftRigh,
          top: topBottom,
          child: CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 70,
                width: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 4),
              Text(
                cardNumber,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                expiryDate,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                cardType,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 19),
              ),
            ],
          ),
        )
      ],
    );
  }
}
