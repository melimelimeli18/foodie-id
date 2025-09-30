import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              // Dine In Card
              GestureDetector(
                onTap: () {
                  // Navigate ke home screen dengan mode Dine In
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: _buildOptionCard(
                  'Dine In',
                  'assets/home/images/351.png',
                ),
              ),
              const SizedBox(height: 40),
              // Take Away Card
              GestureDetector(
                onTap: () {
                  // Navigate ke home screen dengan mode Take Away
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: _buildOptionCard(
                  'Take \nAway',
                  'assets/home/images/41.png',
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard(String title, String imagePath) {
    return Container(
      width: 316,
      height: 216,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          )
        ],
        // Base color: rgba(253, 130, 90, 0.50)
        color: Color.fromRGBO(253, 130, 90, 0.5),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // Top gradient layer: rgba(232, 90, 44, 0.20) to rgba(255, 210, 63, 0.20)
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(232, 90, 44, 0.2),
              Color.fromRGBO(255, 210, 63, 0.2),
            ],
          ),
        ),
        child: Stack(
          children: [
            // Image - posisi di kanan tengah
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 130,
              child: Center(
                child: Image.asset(
                  imagePath,
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Text - posisi di kiri tengah
            Positioned(
              left: 30,
              top: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}