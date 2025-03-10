import 'package:expenze_app/contents/colors.dart';
import 'package:flutter/material.dart';

class FontWidgect extends StatelessWidget {
  const FontWidgect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 100, fit: BoxFit.cover),
        SizedBox(height: 20),
        Text(
          "Expenze",
          style: TextStyle(
            fontSize: 40,
            color: kMainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
