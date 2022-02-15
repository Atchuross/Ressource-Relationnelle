import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SPTextFormField extends StatelessWidget {
  const SPTextFormField({Key? key, required this.labelText, this.validator})
      : super(key: key);
  final String labelText;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
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
        //controller: loginController.loginUsernameEditingController,
      ),
    );
  }
}
