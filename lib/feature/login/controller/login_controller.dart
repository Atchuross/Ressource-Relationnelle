import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:ressource_relat/feature/login/model/login_model.dart';
import 'package:ressource_relat/feature/register/register.dart';
import 'package:ressource_relat/services/network_handler/network_handler.dart';
import 'package:passwordfield/passwordfield.dart';

class LoginController extends GetxController {
  TextEditingController loginUsernameEditingController =
      TextEditingController();
  TextEditingController loginPasswordEditingController =
      TextEditingController();
  bool needRegister = false;
  void login() async {
    LoginModel loginModel = LoginModel(
        userName: loginUsernameEditingController.text,
        password: loginPasswordEditingController.text);
    var response = await NetworkHandler.post(
        loginModelToJson(loginModel), "api/LoginViewModels/Login");
    var data = json.decode(response);
    print(data["id"]);
    if (data["message"] == "register") {
      Get.to(Register());
    }
  }
}
