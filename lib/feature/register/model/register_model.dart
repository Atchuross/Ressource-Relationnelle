// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  RegisterModel({
    required this.nom,
    required this.prenom,
    required this.userName,
    required this.password,
    required this.email,
    required this.passwordConfirm,
  });

  String nom;
  String prenom;
  String userName;
  String password;
  String email;
  String passwordConfirm;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        nom: json["Nom"],
        prenom: json["Prenom"],
        userName: json["UserName"],
        password: json["password"],
        email: json["Email"],
        passwordConfirm: json["PasswordConfirm"],
      );

  Map<String, dynamic> toJson() => {
        "Nom": nom,
        "Prenom": prenom,
        "UserName": userName,
        "password": password,
        "Email": email,
        "PasswordConfirm": passwordConfirm,
      };
}
