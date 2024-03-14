import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      
      errMessage,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 18),
    );
  }
}
