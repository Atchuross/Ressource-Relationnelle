import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SPTextPassFormField extends StatelessWidget {
  const SPTextPassFormField(
      {Key? key,
      required this.labelText,
      this.validator,
      this.prefixIcon,
      this.textEditingController})
      : super(key: key);
  final String labelText;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColor.captionColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: Colors.black54),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.redAccent),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.redAccent),
          ),
        ),
        validator: validator,
        obscureText: true,
        obscuringCharacter: "●",
        //controller: loginController.loginUsernameEditingController,
      ),
    );
  }
}
