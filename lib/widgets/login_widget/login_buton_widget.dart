import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';

Widget loginButton() {
  return OutlinedButton(
    onPressed: () {},
    style: ButtonStyle(
      side: WidgetStateProperty.resolveWith<BorderSide?>(
        (Set<WidgetState> states) {
          return const BorderSide(
              color: CustomColors.blue); // Define your border here
        },
      ),
    ),
    child: const Text("Login"),
  );
}
