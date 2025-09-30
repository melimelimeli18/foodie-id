import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, '/onboarding'),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [

              // untuk membuat lingkaran di atas kanan
              Positioned(
                top: -50,
                right: -50,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFD825A).withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              // untuk membuat lingkaran di bawah kiri
              Positioned(
                bottom: -80,
                left: -80,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFD825A).withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              // peletakan logo foodie id ditengah dan ukurannya serta mengambil foto dari assets
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/home/foodie_logo.png',
                      width: 400,
                      height: 260,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}