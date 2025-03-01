import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/screens/signup/patientsignup.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboarding(
        isBackButtonVisible: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 76),
              child: Logo(
                text: "HealthCare",
              ),
            ),
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
              destination: PatientSignUp(),
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
