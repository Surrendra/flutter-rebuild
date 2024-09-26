import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String defaultValue;
  final TextEditingController controller;

  LoginInputField({
      required this.hintText,
      this.obscureText = false,
      required this.defaultValue,
      required this.controller
  }){
    controller.text = defaultValue;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade200))
      ),
      child: TextField(
        controller: controller,
        obscureText: this.obscureText,
        decoration: InputDecoration(
            hintText: this.hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none
        ),
      ),
    );
  }
}