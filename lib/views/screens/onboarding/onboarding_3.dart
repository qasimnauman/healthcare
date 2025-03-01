import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/screens/onboarding/onboarding_1.dart';
import 'package:healthcare/views/screens/onboarding/signupoptions.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarOnboarding(isBackButtonVisible: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // spacing: 16,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 76),
              child: Logo(text: "HealthCare"),
            ),
            const SizedBox(height: 76),
            Column(
              children: [
                Text(
                  "Let's get started",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                NavButtons(destination: Onboarding1(), text: "SignIn"),
                const SizedBox(height: 16),
                NavButtons(destination: SignUpOptions(), text: "SignUp"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
