import 'package:flutter/material.dart';
import 'package:ressource_relat/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:ressource_relat/foundation/sp_text_field/sp_text_field.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SPTextFormField(
                  labelText: "Confirmer votre mot de passe",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Le champ ne peut pas être vide";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Prénom",
                ),
                SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Nom",
                ),
                SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Email",
                ),
                SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Mot de passe",
                ),
                SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Confirmer votre mot de passe",
                ),
                SizedBox(
                  height: 15,
                ),
                SPTextFormField(
                  labelText: "Votre Nom d'utilisateur",
                ),
                SPSolidButton(
                  text: "S'inscrire",
                  minusWidth: 0,
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
