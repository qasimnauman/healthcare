import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/buttons.dart';
import 'package:healthcare/views/components/onboarding.dart';

class AppointmentDetailsScreenPhysical extends StatelessWidget {
  const AppointmentDetailsScreenPhysical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboarding(
        isBackButtonVisible: true,
        text: "Appointments",
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                )
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Appointment with Hania",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 7.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildInfoButton(Icons.calendar_today, "1/01/2025"),
                        const SizedBox(width: 12),
                        buildInfoButton(Icons.access_time, "2.00 PM"),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "About Patient",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut laore et dolore magna aliqua. Ut enim ad minim veniam... ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Read more",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Additional Notes",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut laore et dolore magna aliqua. Ut enim ad minim veniam...",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Read more",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          "Blood Group:",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          " B+",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Disease:",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          " Fever",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Address",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          " - 123, Street 1, New York",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Reschedule",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
