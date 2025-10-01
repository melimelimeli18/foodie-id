import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.deepOrange),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Contact Us", style: TextStyle(color: Colors.deepOrange)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            ListTile(
              leading: Icon(Icons.email, color: Colors.deepOrange),
              title: Text("foodie.id@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.deepOrange),
              title: Text("(+62) 852–6473–7482"),
            ),
          ],
        ),
      ),
    );
  }
}
