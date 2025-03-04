import 'package:flutter/material.dart';
import 'package:healthcare/views/screens/bottom_navigation_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CompleteMedicalDocumentsScreen extends StatefulWidget {
  const CompleteMedicalDocumentsScreen({super.key});

  @override
  _CompleteMedicalDocumentsScreenState createState() => _CompleteMedicalDocumentsScreenState();
}

class _CompleteMedicalDocumentsScreenState extends State<CompleteMedicalDocumentsScreen> {
  File? _specializationFile;
  File? _certificationFile;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _specializationController = TextEditingController();
  final TextEditingController _instituteController = TextEditingController();
  final TextEditingController _completionDateController = TextEditingController();

  Future<void> _pickFile(bool isSpecialization) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        if (isSpecialization) {
          _specializationFile = File(pickedFile.path);
        } else {
          _certificationFile = File(pickedFile.path);
        }
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

  Widget _buildUploadBox({required String label, required bool isSpecialization}) {
    return GestureDetector(
      onTap: () => _pickFile(isSpecialization),
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
                children: [
                  Text(label, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  const SizedBox(height: 4),
                  const Text(".pdf, .png, .jpg, .jpeg (Max: 5MB)", style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
            Icon(
              (isSpecialization ? _specializationFile : _certificationFile) == null
                  ? Icons.cloud_upload_outlined
                  : Icons.check_circle,
              color: (isSpecialization ? _specializationFile : _certificationFile) == null ? Colors.grey : Colors.green,
              size: 28,
            ),
            if (!isSpecialization) const SizedBox(width: 8),
            if (!isSpecialization)
              const Icon(Icons.add_box_outlined, color: Colors.grey, size: 28),
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
          onPressed: () {},
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
            Center(child: const Text("Medical Documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey))),
            const SizedBox(height: 12),
            _buildTextField(hint: "Specialization", icon: Icons.school_outlined, controller: _specializationController),
            _buildTextField(hint: "Institute", icon: Icons.business_outlined, controller: _instituteController),
            _buildTextField(hint: "Completion Date", icon: Icons.calendar_today_outlined, controller: _completionDateController),
            _buildUploadBox(label: "Specialization", isSpecialization: true),
            _buildUploadBox(label: "Certification", isSpecialization: false),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigationBarScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Finish Profile",
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
