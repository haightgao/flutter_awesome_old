import 'package:flutter/material.dart';
import 'package:flutter_awesome/example/animation/coffee_login/bottom_part.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AnimationCoffeeLoginPage extends StatefulWidget {
  const AnimationCoffeeLoginPage({Key? key}) : super(key: key);

  @override
  _AnimationCoffeeLoginPageState createState() =>
      _AnimationCoffeeLoginPageState();
}

class _AnimationCoffeeLoginPageState extends State<AnimationCoffeeLoginPage>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool isGreenCoffee = false;
  bool isTextReady = false;

  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController.addListener(
      () {
        if (_coffeeController.value > 0.7) {
          _coffeeController.stop();
          isGreenCoffee = true;
          setState(() {});
          Future.delayed(
            const Duration(seconds: 1),
            () {
              isTextReady = true;

              setState(() {});
            },
          );
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _coffeeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 屏幕高度
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xfff8dc9c),
      body: Stack(
        children: [
          Visibility(
            visible: true,
            child: const BottomPart(),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: isGreenCoffee ? screenHeight / 1.45 : screenHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(isGreenCoffee ? 25 : 0),
                bottomRight: Radius.circular(isGreenCoffee ? 25 : 0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedCrossFade(
                  firstChild: Lottie.asset(
                    'assets/example/animation/coffee_login/coffee.json',
                    height: screenHeight / 2,
                  ),
                  secondChild: Lottie.asset(
                    'assets/example/animation/coffee_login/coffee.json',
                    controller: _coffeeController,
                    height: screenHeight / 2,
                    onLoaded: (composition) {
                      _coffeeController
                        ..duration = composition.duration
                        ..forward();
                    },
                  ),
                  crossFadeState: !isGreenCoffee
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2),
                ),
                Center(
                  child: AnimatedOpacity(
                    opacity: isTextReady ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: Text('Coffee Cups',
                        style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                          fontSize: 50,
                          color: Color(0xff674335),
                          fontWeight: FontWeight.bold,
                        ))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
