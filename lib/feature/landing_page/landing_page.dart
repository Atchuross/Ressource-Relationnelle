import 'package:flutter/material.dart';
import 'package:ressource_relat/feature/ajout_ressource/ajout_ressource.dart';
import 'package:ressource_relat/feature/home_page/home_page.dart';
import 'package:ressource_relat/feature/profile/profile.dart';
import 'package:ressource_relat/foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), AjoutRessource(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: const Color(0xff03999e),
          selectedLabelStyle: const TextStyle(fontSize: 13),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SPIcon(
                  assetname: "accueil.png",
                  isSelected: 0 == currentIndex,
                ),
                label: "Acceuil"),
            BottomNavigationBarItem(
                icon: SPIcon(
                  assetname: "add.png",
                  isSelected: 1 == currentIndex,
                ),
                label: "Ajouter"),
            BottomNavigationBarItem(
                icon: SPIcon(
                  assetname: "profil.png",
                  isSelected: 2 == currentIndex,
                ),
                label: "Profile")
          ]),
      body: pages[currentIndex],
    );
  }
}
