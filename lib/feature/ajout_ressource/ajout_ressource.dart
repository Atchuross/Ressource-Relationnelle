import 'package:flutter/material.dart';
import 'package:ressource_relat/feature/login/login_bottomsheet.dart';
import 'package:ressource_relat/foundation/theme/colors.dart';

class AjoutRessource extends StatefulWidget {
  AjoutRessource({Key? key}) : super(key: key);

  @override
  _AjoutRessourceState createState() => _AjoutRessourceState();
}

class _AjoutRessourceState extends State<AjoutRessource> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: SafeArea(child: Text("Ajout Ressource")),
    );
  }
}
