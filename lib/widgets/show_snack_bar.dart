import 'package:flutter/material.dart';
import 'package:mr_coffee/widgets/constans.dart';

void ShowSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: KMainColor,
      content: Text(
        message,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
