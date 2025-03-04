import 'package:flutter/material.dart';

class FinancialAnalyticsScreen extends StatelessWidget {
  const FinancialAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Financial Analytics",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Finances",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildFinanceCard(
              icon: Icons.account_balance_wallet,
              text: "Payments being Cleared",
              amount: "Rs 12000",
            ),
            const SizedBox(height: 15),
            _buildFinanceCard(
              icon: Icons.arrow_downward,
              text: "Payments Withdrawn",
              amount: "Rs 50000",
            ),
            const SizedBox(height: 20),
            Image.asset("assets/images/earnings_graph.png", fit: BoxFit.cover)
          ],
        ),
      ),
    );
  }

  Widget _buildFinanceCard({required IconData icon, required String text, required String amount}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(64, 124, 226, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 28),
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            amount,
            style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

}
