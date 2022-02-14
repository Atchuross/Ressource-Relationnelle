import 'package:flutter/material.dart';
import 'package:ressource_relat/foundation/sp_text_button/sp_text_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SPTextButton(
          text: "FAQs",
        ),
        SPTextButton(
          text: "A PROPOS DE NOUS",
        ),
        SPTextButton(
          text: "TERMES ET CONDITIONS",
        ),
      ],
    );
  }
}
