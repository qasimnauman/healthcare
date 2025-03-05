import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/screens/menu/availability/add_availability.dart';
import 'package:healthcare/views/screens/menu/availability/remove_availability.dart';

class SetAvailabilityScreen extends StatelessWidget {
  const SetAvailabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboarding(
        text: "Availability",
        isBackButtonVisible: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildButton(
                "Add New Availability",
                Color.fromRGBO(64, 123, 255, 1),
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddAvailabilityScreen()),
                    );
                }),
                const SizedBox(height: 16),
                _buildButton("Update Existing Availability", Color.fromRGBO(64, 123, 255, 1), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RemoveAvailability()),
                    );
                }),
              ],
            ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color color, VoidCallback onPressed) {
    return SizedBox(
      width: 300, // Adjust width to match design
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Rounded shape
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
