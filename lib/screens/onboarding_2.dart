import 'package:flutter/material.dart';
import 'package:healthcare/components/onboarding.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2 ({super.key});

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
              imagepath: "assets/images/male-doctor.png"
            ),
            const SizedBox(
              height: 20
            ),
            OnboardingText(
              text: "Get advice only from a doctor you believe in.",
            ),
            OnboardingNavigation(
              pageno: 2,
              destination: Onboarding2(),
            ),
          ],
        ),
      ),
    );
  }
}