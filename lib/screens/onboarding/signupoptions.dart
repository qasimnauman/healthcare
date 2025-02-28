import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/components/onboarding.dart';
import 'package:healthcare/screens/onboarding/onboarding_1.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            const SizedBox(height: 76),
            Text(
              "Sign Up",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            NavButtons(
              destination: Onboarding1(),
              text: "Patient",
            ),
            const SizedBox(height: 16),
            NavButtons(
              destination: SignUpOptions(),
              text: "Doctor",
            ),
            const SizedBox(height: 16),
            NavButtons(
              destination: SignUpOptions(),
              text: "Lady Health Worker",
            ),
          ],
        ),
      ),
    );
  }
}
