import 'package:flutter/material.dart';
import 'package:ressource_relat/feature/profile/profile_without_login.dart';
import 'package:ressource_relat/foundation/theme/colors.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(child: ProfileWithoutLogin()),
    );
  }
}
