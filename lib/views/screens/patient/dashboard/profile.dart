import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PatientProfileScreen extends StatelessWidget {
  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // Profile Picture & Name
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'), // Change to network URL if needed
            ),
            const SizedBox(height: 10),
            Text(
              "Amna",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Appointments & Expenditures
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _infoTile("Appointments", "25", LucideIcons.calendarPlus),
                Container(
                  height: 40,
                  width: 1,
                  color: Colors.grey.shade300,
                ),
                _infoTile("Expenditures", "Rs 15000", LucideIcons.wallet),
              ],
            ),
            const SizedBox(height: 16),

            // Menu List
            Expanded(
              child: ListView(
                children: [
                  _menuTile(context, "Update Profile", LucideIcons.user, UpdateProfileScreen()),
                  _menuTile(context, "Payment Methods", LucideIcons.creditCard, PaymentMethodsScreen()),
                  _menuTile(context, "Appointments History", LucideIcons.history, AppointmentHistoryScreen()),
                  _menuTile(context, "FAQs", LucideIcons.circleHelp, FAQScreen()),
                  _menuTile(context, "Help Center", LucideIcons.headphones, HelpCenterScreen()),
                  _menuTile(context, "Logout", LucideIcons.logOut, LogoutScreen()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for Info Tile (Appointments & Expenditures)
  Widget _infoTile(String title, String value, IconData icon) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Colors.blue, size: 30),
          const SizedBox(height: 4),
          Text(title, style: TextStyle(fontSize: 14, color: Colors.blue)),
          const SizedBox(height: 4),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
        ],
      ),
    );
  }

  // Widget for Clickable Menu Items
  Widget _menuTile(BuildContext context, String title, IconData icon, Widget screen) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: Icon(icon, color: Colors.blue),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Icon(LucideIcons.chevronRight, color: Colors.black54),
      onTap: () => _navigateTo(context, screen),
    );
  }
}
