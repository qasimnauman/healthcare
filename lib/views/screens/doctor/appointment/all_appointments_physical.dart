import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/screens/doctor/appointment/appointment_detail_physical.dart';
import 'package:healthcare/model/appointments.dart';
import 'package:healthcare/views/components/buttons.dart';

class AppointmentsScreenAll extends StatelessWidget {
  AppointmentsScreenAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarOnboarding(isBackButtonVisible: true, text: "Appointments"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Personal Clinic",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: const Color.fromARGB(255, 155, 155, 155),
                        size: 32,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "123, ABC Street, XYZ City",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // _buildSearchBar(),
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
                SizedBox(height: 8),
                buildActionButton(
                  "Details",
                  Color.fromRGBO(64, 124, 226, 1),
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppointmentDetailsScreenPhysical(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


