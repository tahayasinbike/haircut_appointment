import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haircut_appointment/constants/colors.dart';
import 'package:haircut_appointment/models/login_model/login_viewmodel.dart';
import 'package:haircut_appointment/widgets/login_widget/login_buton_widget.dart';
import 'package:haircut_appointment/widgets/login_widget/textform_field_widget.dart';

final LoginViewModel lvm = LoginViewModel();

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.drawerColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: CustomColors.white,
            )),
      ),
      backgroundColor: CustomColors.drawerColor,
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/logo/loginImage.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: emailTextFormField(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: passwordTextField(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: loginButton(),
          )
        ],
      ),
    );
  }
}
