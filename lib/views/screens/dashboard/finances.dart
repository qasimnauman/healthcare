import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/views/components/onboarding.dart';

class FinancesScreen extends StatelessWidget {
  final List<TransactionItem> transactions = [
    TransactionItem(
      "Appointment with Maheen",
      "Rs 1800",
      Colors.green,
      Icons.check,
    ),
    TransactionItem(
      "Appointment with Dr Akbar",
      "Rs 5500",
      Colors.red,
      Icons.close,
    ),
    TransactionItem(
      "Appointment with Ajmal",
      "Rs 2990",
      Colors.green,
      Icons.check,
    ),
    TransactionItem("Service Charges", "Rs 300", Colors.green, Icons.check),
  ];

  FinancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarOnboarding(text: "Finances"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard(
                  "Earnings this Month",
                  "Rs 15000",
                  Colors.black,
                  const Color.fromRGBO(46, 204, 113, 1), // Green shade
                  Icons.account_balance_wallet,
                ),
                _buildStatCard(
                  "Payment Pending",
                  "Rs 1200",
                  Colors.black,
                  const Color.fromRGBO(243, 156, 18, 1), // Orange shade
                  Icons.swap_horiz,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Recent Transactions",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return _buildTransactionCard(context, transactions[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(
    String title,
    String amount,
    Color textcolor,
    Color color,
    IconData icon,
  ) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: textcolor, size: 28),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            amount,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textcolor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionCard(
    BuildContext context,
    TransactionItem transaction,
  ) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: transaction.color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(transaction.icon, color: Colors.white),
        ),
        title: Text(
          transaction.title,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(transaction.amount),
        trailing: PopupMenuButton<int>(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          onSelected: (value) {
            if (value == 1) {
              // Handle Download Report
              debugPrint("Download Report clicked");
            } else if (value == 2) {
              // Handle Edit Report
              debugPrint("Edit Report clicked");
            }
          },
          itemBuilder:
              (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Download Reciept",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "View Reciept",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
          icon: const Icon(Icons.more_vert), // Three-dot menu icon
        ),
      ),
    );
  }
}

class TransactionItem {
  final String title;
  final String amount;
  final Color color;
  final IconData icon;

  TransactionItem(this.title, this.amount, this.color, this.icon);
}
