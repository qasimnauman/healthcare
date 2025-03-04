import 'package:flutter/material.dart';
import 'package:healthcare/views/screens/complete_profile/specialization.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CompleteEducationScreen extends StatefulWidget {
  const CompleteEducationScreen({super.key});

  @override
  _CompleteEducationScreenState createState() => _CompleteEducationScreenState();
}

class _CompleteEducationScreenState extends State<CompleteEducationScreen> {
  File? _degreeFile;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _degreeController = TextEditingController();
  final TextEditingController _instituteController = TextEditingController();
  final TextEditingController _completionDateController = TextEditingController();

  Future<void> _pickFile() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _degreeFile = File(pickedFile.path);
      });
    }
  }

  Widget _buildTextField({required String hint, required IconData icon, required TextEditingController controller}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUploadBox() {
    return GestureDetector(
      onTap: _pickFile,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            const Icon(Icons.school_outlined, color: Colors.grey, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Degree", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  SizedBox(height: 4),
                  Text(".pdf, .png, .jpg, .jpeg (Max: 5MB)", style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
            Icon(_degreeFile == null ? Icons.cloud_upload_outlined : Icons.check_circle, color: _degreeFile == null ? Colors.grey : Colors.green, size: 28),
          ],
        ),
      ),
    );
  }

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
          "Complete your Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: const Text("Education", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey))),
            const SizedBox(height: 12),
            _buildTextField(hint: "Degree", icon: Icons.school_outlined, controller: _degreeController),
            _buildTextField(hint: "Institute", icon: Icons.business_outlined, controller: _instituteController),
            _buildTextField(hint: "Completion Date", icon: Icons.calendar_today_outlined, controller: _completionDateController),
            _buildUploadBox(),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompleteMedicalDocumentsScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
