import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';

class TextFromFieldLogin extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icons;

  TextFromFieldLogin({
    required this.controller,
    required this.hintText,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: ColorsUtils.kWhite,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(
            icons,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
