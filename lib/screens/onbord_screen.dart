import 'package:expenze_app/contents/colors.dart';
import 'package:expenze_app/data/onbording_data.dart';
import 'package:expenze_app/screens/onbording/font_widgect.dart';
import 'package:expenze_app/screens/onbording/sheired_onbording_widgect.dart';
import 'package:expenze_app/screens/user_data_screen.dart';
import 'package:expenze_app/sheired_wigects/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordScreen extends StatefulWidget {
  const OnbordScreen({super.key});

  @override
  State<OnbordScreen> createState() => _OnbordScreenState();
}

class _OnbordScreenState extends State<OnbordScreen> {
  final PageController _controler = PageController();
  bool showDetailsPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controler,
                  onPageChanged: (index) {
                    setState(() {
                      showDetailsPage = index == 3;
                    });
                  },
                  children: [
                    FontWidgect(),
                    SheiredOnbordingWidgect(
                      imageUrl: OnbordingData.onbordingDataList[0].imageUrl,
                      title: OnbordingData.onbordingDataList[0].title,
                      dis: OnbordingData.onbordingDataList[0].discription,
                    ),
                    SheiredOnbordingWidgect(
                      imageUrl: OnbordingData.onbordingDataList[1].imageUrl,
                      title: OnbordingData.onbordingDataList[1].title,
                      dis: OnbordingData.onbordingDataList[1].discription,
                    ),
                    SheiredOnbordingWidgect(
                      imageUrl: OnbordingData.onbordingDataList[2].imageUrl,
                      title: OnbordingData.onbordingDataList[2].title,
                      dis: OnbordingData.onbordingDataList[2].discription,
                    ),
                  ],
                ),
                //page indicater
                Container(
                  alignment: Alignment(0, 0.7),
                  child: SmoothPageIndicator(
                    controller: _controler,
                    count: 4,
                    effect: ExpandingDotsEffect(
                      activeDotColor: kMainColor,
                      dotColor: Colors.grey,
                    ),
                  ),
                ),

                //navigation button
                Positioned(
                  bottom: 40,
                  left: 10,
                  right: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
                        !showDetailsPage
                            ? GestureDetector(
                              onTap: () {
                                _controler.animateToPage(
                                  _controler.page!.toInt() + 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: CustomButton(
                                buttonName:
                                    showDetailsPage ? "Get Started" : "Next",
                                btnColorName: kMainColor,
                              ),
                            )
                            : GestureDetector(
                              onTap: () {
                                //navigate to the user data screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserDataScreen(),
                                  ),
                                );
                              },
                              child: CustomButton(
                                buttonName:
                                    showDetailsPage ? "Get Started" : "Next",
                                btnColorName: kMainColor,
                              ),
                            ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
