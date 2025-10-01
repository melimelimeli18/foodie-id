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

              // dine in
              GestureDetector(
                onTap: () {

                  // lempar ke home screen pada saat click box dine in
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: _buildOptionCard(
                  'Dine In',
                  'assets/home/images/351.png',
                ),
              ),
              const SizedBox(height: 40),

              // take away
              GestureDetector(
                onTap: () {

                  // lempar ke home screen pada saat click box take away
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

// membuat base widget card
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
        color: Color.fromRGBO(253, 130, 90, 0.5),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(232, 90, 44, 0.2),
              Color.fromRGBO(255, 210, 63, 0.2),
            ],
          ),
        ),

        // untuk mengatur posisi text dan gambar
        child: Stack(
          children: [
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