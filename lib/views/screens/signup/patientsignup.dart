import 'package:flutter/material.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/components/signup.dart';

class PatientSignUp extends StatefulWidget {
  const PatientSignUp({super.key});

  @override
  State<PatientSignUp> createState() => _PatientSignUpState();
}

class _PatientSignUpState extends State<PatientSignUp> {
  bool _privacyAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboarding(isBackButtonVisible: true),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Logo(text: "Welcome to Healthcare as a Patient"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: DataInputFeild(
                    hinttext: "Name",
                    icon: Icons.person_3_outlined,
                    inputType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: DataInputFeild(
                    hinttext: "+92 300 0000000",
                    icon: Icons.phone,
                    inputType: TextInputType.phone,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 51),
          PrivacyPolicy(
            isselected: _privacyAccepted,
            onChanged: (newValue) {
              setState(() {
                _privacyAccepted = newValue;
              });
            },
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap:
                !_privacyAccepted
                    ? () {
                      // Your send OTP logic here.
                    }
                    : null, // onTap is disabled if _privacyAccepted is false
            child: ProceedButton(
              isEnabled: _privacyAccepted,
            ),
          ),
        ],
      ),
    );
  }
}
