import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(25, 80, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Dr. Asmara",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/User.png"),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Earnings Card
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage("assets/images/earnings.png")),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Total Earning", style: TextStyle(color: Colors.white, fontSize: 16)),
                      Text("\$400.00", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            
            // Ratings Card
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.blue),
                      SizedBox(width: 8),
                      Text("Overall Ratings", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text("4.2/5", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star, color: Colors.yellow, size: 24),
                      Icon(Icons.star_half, color: Colors.yellow, size: 24),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text("Based on 121 reviews", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(height: 20),
            
            // Upcoming Appointments
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Appointments", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("See all", style: TextStyle(color: Colors.blue)),
              ],
            ),
            SizedBox(height: 8),
            
            Column(
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 5)],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                            "Appointment with Hania",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Jan 10, 2025\n12:00 pm - 1:00 pm",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
