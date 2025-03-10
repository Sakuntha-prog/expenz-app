import 'package:expenze_app/models/onbording_model.dart';

class OnbordingData {
  static final List<OnbordingModel> onbordingDataList = [
    OnbordingModel(
      title: "Gain total control\nof your money",
      imageUrl: "assets/images/onboard_1.png",
      discription: "Become your own money manager\n and make every cent count",
    ),
    OnbordingModel(
      title: "Know where your\nmoney goes",
      imageUrl: "assets/images/onboard_3.png",
      discription: "Track your transaction easily,\nwith categories and financial report ",
    ),
     OnbordingModel(
      title: "Planning ahead",
      imageUrl: "assets/images/onboard_2.png",
      discription: "Setup your budget for each category\nso you in control",
    ),
  ];
}
