import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:ressource_relat/feature/login/controller/login_controller.dart';
import 'package:ressource_relat/feature/login/login_bottomsheet.dart';
import 'package:ressource_relat/feature/login/model/login_model.dart';
import 'package:ressource_relat/feature/register/model/register_model.dart';
import 'package:ressource_relat/services/network_handler/network_handler.dart';

class RegisterController extends GetxController {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController nomTextController = TextEditingController();
  TextEditingController prenomTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  var loginController = Get.find<LoginController>();

  void register() async {
    RegisterModel registerModel = RegisterModel(
        userName: loginController.loginUsernameEditingController.text,
        password: loginController.loginPasswordEditingController.text,
        passwordConfirm: passwordTextController.text,
        nom: nomTextController.text,
        prenom: prenomTextController.text,
        email: emailTextController.text);
    var response = await NetworkHandler.post(
        registerModelToJson(registerModel), "api/LoginViewModels/Register");
    var data = json.decode(response);
    print(data["succeeded"]);
    if (data["succeeded"] == "true") {
      Get.back();
    }
  }
}
