import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.userName,
    required this.password,
  });

  String userName;
  String password;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        userName: json["UserName"],
        password: json["Password"],
      );

  Map<String, dynamic> toJson() => {
        "UserName": userName,
        "Password": password,
      };
}
