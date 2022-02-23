import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ressource_relat/feature/login/controller/login_controller.dart';
import 'package:ressource_relat/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:ressource_relat/foundation/theme/colors.dart';

class LoginBottomSheet extends StatelessWidget {
  LoginBottomSheet({Key? key}) : super(key: key);
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: AppColor.whiteColor,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/re_logo.png", height: 45, width: 45),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.clear,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Connectez-vous",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " ou ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: "Inscrivez-vous",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            height: 43,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Nom d'utilisateur*",
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1, color: AppColor.captionColor),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Colors.black54),
                ),
              ),
              controller: loginController.loginUsernameEditingController,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 43,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Mot de passe*",
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1, color: AppColor.captionColor),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Colors.black54),
                ),
              ),
              controller: loginController.loginPasswordEditingController,
              obscureText: true,
              obscuringCharacter: "●",
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "En continuant vous accepter les ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11.6,
                  ),
                ),
                TextSpan(
                  text: " termes ",
                  style: TextStyle(
                    color: AppColor.buttonColor,
                    fontSize: 12,
                  ),
                ),
                const TextSpan(
                  text: " et les",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11.6,
                  ),
                ),
                TextSpan(
                  text: " conditions d'utilisations",
                  style: TextStyle(
                    color: AppColor.buttonColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SPSolidButton(
            text: "Continuer",
            minusWidth: 0,
            onPressed: loginController.login,
          ),
          SizedBox(
            height: 35,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Des problèmes pour vous connecter ? ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11.6,
                  ),
                ),
                TextSpan(
                  text: " Suivez l'aide",
                  style: TextStyle(
                    color: AppColor.buttonColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
