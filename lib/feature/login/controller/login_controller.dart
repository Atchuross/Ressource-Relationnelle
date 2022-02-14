import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:ressource_relat/feature/login/model/login_model.dart';
import 'package:ressource_relat/services/network_handler/network_handler.dart';
import 'package:passwordfield/passwordfield.dart';

class LoginController extends GetxController {
  TextEditingController loginUsernameEditingController =
      TextEditingController();
  TextEditingController loginPasswordEditingController =
      TextEditingController();
  void login() {
    LoginModel loginModel = LoginModel(
        userName: loginUsernameEditingController.text,
        password: loginPasswordEditingController.text);
    NetworkHandler.post(
        loginModelToJson(loginModel), "api/LoginViewModels/Login");
  }
}
