import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';

Widget emailTextFormField() {
  final TextEditingController emailController = TextEditingController();
  return TextFormField(
    controller: emailController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Bilgileri Eksiksiz Doldurunuz";
      } else {}
      return null;
    },
    style: const TextStyle(color: Colors.white),
    decoration: customInputDecoration("Email"),
  );
}

TextFormField passwordTextField() {
  final TextEditingController passwordController = TextEditingController();
  return TextFormField(
    controller: passwordController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Bilgileri Eksiksiz Doldurunuz";
      } else {}
      return null;
    },
    obscureText: true,
    style: const TextStyle(color: Colors.white),
    decoration: customInputDecoration("Password"),
  );
}

InputDecoration customInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: const TextStyle(color: Colors.grey),
    enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: CustomColors.white, width: 2)),
    focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: CustomColors.yellow, width: 2)),
  );
}
