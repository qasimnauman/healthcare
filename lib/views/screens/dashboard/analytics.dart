import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "Analytics",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildAnalyticsCard(
                icon: Icons.show_chart,
                title: "Performance Analysis",
                color: Color.fromRGBO(255,	197,	23, 5),
              ),
              _buildAnalyticsCard(
                icon: Icons.bar_chart,
                title: "Financial Analytics",
                color: Colors.orange,
              ),
              _buildAnalyticsCard(
                icon: Icons.person,
                title: "Patients",
                color: Colors.grey,
              ),
              _buildAnalyticsCard(
                icon: Icons.report, 
                title: "Reports", 
                color: Colors.grey
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnalyticsCard(
      {required IconData icon, required String title, required Color color}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Icon(icon, size: 32, color: Colors.black),
              SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Icon(Icons.arrow_forward, size: 28, color: Colors.black),
        ],
      ),
    );
  }
}
