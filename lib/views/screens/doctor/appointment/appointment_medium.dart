import 'package:flutter/material.dart';
import 'package:healthcare/views/components/onboarding.dart';
import 'package:healthcare/views/screens/doctor/appointment/all_appoinments.dart';
import 'package:healthcare/views/screens/doctor/appointment/all_appointments_physical.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AppointmentMedium extends StatefulWidget {
  @override
  _AppointmentMediumState createState() => _AppointmentMediumState();
}

class _AppointmentMediumState extends State<AppointmentMedium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboarding(isBackButtonVisible: true, text: "Appointment"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/patient_1.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Asmara", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Cardiologist", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        _infoBadge(LucideIcons.star, "4.7"),
                        SizedBox(width: 8),
                        _infoBadge(LucideIcons.dollarSign, "Rs 1500"),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(LucideIcons.mapPin, color: Colors.grey, size: 16),
                        SizedBox(width: 4),
                        Text("CMH Rawalpindi", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Where to book appointment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            
            /// Pass different `onTap` actions dynamically
            _locationTile(
              context,
              "Personal Clinic",
              "Kuddos Medical Center, X Sector Islamabad",
              () => Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentsScreenAll())),
            ),
            
            _locationTile(
              context,
              "CMH",
              "CMH Rawalpindi, Near Saddar Bazar, Rawalpindi",
              () => Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentsScreenAll())),
            ),
            
            _locationTile(
              context,
              "Online",
              "Virtual Consultation",
              () => Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentsScreen())),
            ),
          ],
        ),
      ),
    );
  }

  /// Updated _locationTile method to accept an onTap function
  Widget _locationTile(BuildContext context, String title, String subtitle, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // Use the function passed in the parameter
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: Colors.grey)),
                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoBadge(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 16),
          SizedBox(width: 4),
          Text(text, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

