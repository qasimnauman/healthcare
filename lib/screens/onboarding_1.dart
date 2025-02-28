import 'package:flutter/material.dart';
import 'package:healthcare/components/onboarding.dart';
import 'package:healthcare/screens/onboarding_2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboarding(),
      body: Center(
        child: Column(
          children: [
            NavSkipText(),
            const SizedBox(height: 20),
            OboardingImage(
              imagepath: "assets/images/lady-doctor.png"
            ),
            const SizedBox(
              height: 20
            ),
            OnboardingText(
              text: "Find a lot of specialist doctors in one place",
            ),
            OnboardingNavigation(
              pageno: 1,
              destination: Onboarding2(),
            ),
          ],
        ),
      ),
    );
  }
}