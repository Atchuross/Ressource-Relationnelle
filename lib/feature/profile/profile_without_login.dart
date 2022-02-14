import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ressource_relat/feature/login/login_bottomsheet.dart';
import 'package:ressource_relat/feature/profile/footer_content.dart';
import 'package:ressource_relat/foundation/profile_item/profile_item.dart';
import 'package:ressource_relat/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:ressource_relat/foundation/theme/colors.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({Key? key}) : super(key: key);
  final double topContainerheight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: topContainerheight,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: topContainerheight * .58,
                      color: AppColor.dummyBgColor,
                    ),
                    Container(
                      height: topContainerheight * .42,
                      color: AppColor.whiteColor,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    height: 132,
                    width: 132,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(25),
                        child: Image.asset(
                          "assets/images/profil.png",
                          color: AppColor.bodyColor2,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 170,
                    child: SPSolidButton(
                      text: "Connexion/Inscription",
                      minusWidth: 215,
                      onPressed: () {
                        Get.bottomSheet(LoginBottomSheet());
                      },
                    )),
              ],
            )),
        SizedBox(
          height: 18,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                title: "Poste",
                subtitle: "Consulter vos dernier postes",
                assetName: "message.png",
                isLast: false,
                onTap: () {
                  Get.bottomSheet(LoginBottomSheet());
                },
              ),
              const ProfileItem(
                title: "Favoris",
                subtitle: "Consulter vos postes enregistré",
                assetName: "ajouter-aux-favoris.png",
                isLast: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                title: "Paramètre du profil",
                subtitle: "Modifier votre mot de passe, photo de profil, ...",
                assetName: "setting.png",
                isLast: false,
              ),
              ProfileItem(
                title: "Support",
                subtitle: "Un problème, contacter le support directement",
                assetName: "service-client.png",
                isLast: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        FooterContent(),
        SizedBox(
          height: 30,
        ),
        Text(
          "APP VERSION 0.0.1",
          style: Theme.of(context).textTheme.overline,
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
