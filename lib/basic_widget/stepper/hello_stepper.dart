import 'package:flutter/material.dart';

class HelloStepper extends StatefulWidget {
  const HelloStepper({Key? key}) : super(key: key);

  @override
  State<HelloStepper> createState() => _HelloStepperState();
}

class _HelloStepperState extends State<HelloStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Center(
        child: Stepper(
          currentStep: _currentStep,
          steps: const [
            Step(title: Text('step 1'), content: Text('Information step 1')),
            Step(title: Text('step 2'), content: Text('Information step 2')),
            Step(title: Text('step 3'), content: Text('Information step 3')),
          ],
          onStepTapped: (int newStep) {
            setState(() {
              _currentStep = newStep;
            });
          },
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                ++_currentStep;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                --_currentStep;
              });
            }
          },
        ),
      ),
    );
  }
}
