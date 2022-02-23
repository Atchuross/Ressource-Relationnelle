import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ressource_relat/feature/login/controller/login_controller.dart';
import 'package:ressource_relat/feature/register/controller/register_controller.dart';
import 'package:ressource_relat/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:ressource_relat/foundation/sp_text_field/sp_text_field.dart';
import 'package:ressource_relat/foundation/sp_text_field_pass/sp_text_field_pass.dart';
import 'package:ressource_relat/foundation/theme/colors.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  var loginController = Get.find<LoginController>();
  var registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: const Text(
          "Completer votre inscription",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            fontSize: 11.5,
                            color: AppColor.captionColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          loginController.loginUsernameEditingController.text,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.tealAccent,
                      radius: 12,
                      child: Icon(
                        Icons.check,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mot de passe",
                          style: TextStyle(
                            fontSize: 11.5,
                            color: AppColor.captionColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          loginController.loginPasswordEditingController.text
                              .replaceRange(
                                  0,
                                  loginController.loginPasswordEditingController
                                      .text.length,
                                  '●' *
                                      loginController
                                          .loginPasswordEditingController
                                          .text
                                          .length),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.tealAccent,
                      radius: 12,
                      child: Icon(
                        Icons.check,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SPTextPassFormField(
                  labelText: "Confirmer votre mot de passe",
                  textEditingController:
                      registerController.passwordTextController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Le champ ne peut pas être vide";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Prénom",
                  textEditingController:
                      registerController.prenomTextController,
                ),
                const SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Nom",
                  textEditingController: registerController.nomTextController,
                ),
                const SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Email",
                  textEditingController: registerController.emailTextController,
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                SPSolidButton(
                  text: "S'inscrire",
                  minusWidth: 0,
                  onPressed: registerController.register,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
