import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/screens/doctor/appointment/appointment_detail.dart';
import 'package:healthcare/model/appointments.dart';
import 'package:healthcare/views/components/buttons.dart';

class AppointmentsScreen extends StatelessWidget {
  AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarOnboarding(
        isBackButtonVisible: true,
        text: "Appointments",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // _buildSearchBar(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                // color: Colors.grey[200],
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(6),
              ),  
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Online",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.wifi_rounded,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  return _buildAppointmentCard(context, appointments[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppointmentCard(BuildContext context, Appointment appointment) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Appointment with ${appointment.patientName}",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    appointment.date,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    appointment.time,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                buildActionButton("Join Session", Color.fromRGBO(64, 124, 226, 1), () {
                  debugPrint("Joining session for ${appointment.patientName}");
                }),
                SizedBox(height: 8),
                buildActionButton("Details", Color.fromRGBO(64, 124, 226, 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentDetailsScreen(),
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

