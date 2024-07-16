import 'package:flutter/material.dart';
import 'package:haircut_appointment/views/login_view.dart';
import 'package:mobx/mobx.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @action
  void goToLoginPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginView()));
  }
}
