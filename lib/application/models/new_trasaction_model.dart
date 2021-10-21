import 'package:flutter/material.dart';

class NewTrasactionModel {
  final IconData leadingIcon;
  final String description;
  final String subDescription;
  final String amount;

  NewTrasactionModel(
      {required this.leadingIcon,
      required this.description,
      required this.subDescription,
      required this.amount});
}
