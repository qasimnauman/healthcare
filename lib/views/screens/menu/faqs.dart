import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  List<bool> _expanded = [false, false, false];

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
          "FAQ’s",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: 3,
          separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
          itemBuilder: (context, index) {
            return _buildFAQItem(index);
          },
        ),
      ),
    );
  }

  Widget _buildFAQItem(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _expanded[index] = !_expanded[index];
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIcon(),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FAQ ${index + 1}",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      if (_expanded[index])
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur. Posuere adipiscing pulvinar placerat cursus.",
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ),
                    ],
                  ),
                ),
                Icon(_expanded[index] ? Icons.expand_less : Icons.expand_more, color: Colors.black),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIcon() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFEFF3FF), // Light blue background
      ),
      child: const Icon(Icons.help_outline, color: Colors.blue),
    );
  }
}
