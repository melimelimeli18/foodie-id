import 'package:flutter/material.dart';

class PromoTwo extends StatelessWidget {
  const PromoTwo({super.key});

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
                  image: AssetImage('assets/home/promo/promo5.png'),
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
                      'Monday Glory – Spaghetti Voucher',
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
                      'Hari Senin sering terasa berat? Tenang, kami punya solusinya!\n\n'
                      'Setiap hari Senin pukul 12.00 - 13.00 WIB,'
                      'kamu bisa menukarkan voucher untuk mendapatkan Spaghetti Gratis'
                      'yang lezat, hangat, dan pastinya bikin kenyang. \n\n'
                      'Promo ini spesial untuk menemani lunch kamu supaya lebih bersemangat'
                      'menghadapi awal minggu. Jangan lupa ajak teman atau rekan kerja biar makin seru'
                      'Promo terbatas hanya untuk penukaran di tempat, jadi pastikan kamu data tepat waktu'
                      'dan nikmati Monday Glory bersama kami! \n\n',
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