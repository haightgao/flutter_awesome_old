import 'package:flutter/material.dart';
import 'package:flutter_awesome/example/introduction_screens/onboarding_screen/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screens/intro_page_1.dart';
import 'intro_screens/intro_page_2.dart';
import 'intro_screens/intro_page_3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (pageIndex) {
              setState(() {
                isLastPage = pageIndex == 2;
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _pageController.jumpToPage(2);
                  },
                  child: const Text('skip'),
                ),
                SmoothPageIndicator(controller: _pageController, count: 3),
                isLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const HomePage();
                              },
                            ),
                          );
                        },
                        child: const Text('done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text('next'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
