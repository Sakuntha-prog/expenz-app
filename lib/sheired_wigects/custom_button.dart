//import 'package:expenze_app/contents/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color btnColorName;

  const CustomButton({
    super.key, 
    required this.buttonName, 
    required this.btnColorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.06,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
      color: btnColorName
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
