import 'package:flutter/material.dart';

class PromoTree extends StatelessWidget {
  const PromoTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 309,
              width: 393,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home/promo/promo6.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          
          Positioned(
            top: 270,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const Text(
                      'Spesial Takoyaki – Diskon 20%',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    
                    const Text(
                      'Takoyaki hangat dengan isian gurita yang lezat,'
                      'tekstur renyah di luar dan lembut di dalam,'
                      'sekarang bisa kamu nikmati dengan harga lebih hemat!'
                      'Dalam periode promo ini, setiap pembelian Takoyaki favoritmu'
                      'akan mendapatkan diskon 20% langsung di kasir \n\n'

                      'Cocok untuk ngemil sore, teman nonton, atau'
                      'sekadar memanjakan lidah dengan cita rasa jepang.'
                      'Jangan sampai ketinggalan, promo berlaku untuk semua varian'
                      'dan hanya terbatas dalam waktu tertentu.'
                      'Segera pesan sekarang, karena stok cepat habis setiap harinya!'
                      ,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),
                    
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),

          
          Positioned(
            top: 13,
            left: 11,
            child: SafeArea(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 221, 210, 1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(232, 90, 44, 1),
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}