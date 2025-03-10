import 'package:expenze_app/contents/colors.dart';
import 'package:flutter/material.dart';

class SheiredOnbordingWidgect extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String dis;
  const SheiredOnbordingWidgect({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.dis,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 300,
          fit: BoxFit.cover,
        ),
        Text(
          title,style:
          TextStyle(
          fontSize: 25,
          color: kBlack,
          fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          dis,style: TextStyle(
          fontSize: 15,
          color: kGrey,
          fontWeight: FontWeight.w400
          ),
          textAlign: TextAlign.center,
        )
      ]
    );
  }
}
