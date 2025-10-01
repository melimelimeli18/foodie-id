import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: "Caca");
    final phoneController = TextEditingController(text: "(+62) 856–6998–6728");
    final emailController = TextEditingController(text: "chacha120806@gmail.com");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.deepOrange),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("My Account", style: TextStyle(color: Colors.deepOrange)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            const SizedBox(height: 20),

            buildTextField("Name", nameController),
            buildTextField("Phone", phoneController),
            buildTextField("Email", emailController),

            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
              ),
              onPressed: () {},
              child: const Text("SAVE"),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepOrange.shade50,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          suffixIcon: const Icon(Icons.edit, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
