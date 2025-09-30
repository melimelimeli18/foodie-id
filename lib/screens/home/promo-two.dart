import 'package:flutter/material.dart';

class PromoTwo extends StatelessWidget {
  const PromoTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Banner Image
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

          // White Card Container
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
                    // Title
                    const Text(
                      'Diskon 50% untuk Semua Menu',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Description
                    const Text(
                      'Promo spesial untuk semua pelanggan setia! Dapatkan potongan harga hingga 50% '
                      'untuk semua menu makanan dan minuman favorit kamu.\n\n'
                      'Berlaku untuk dine-in, take away, maupun delivery. Tidak ada minimum pembelian, '
                      'jadi kamu bisa langsung menikmati diskonnya kapan saja!\n\n'
                      'Buruan ajak teman dan keluarga untuk menikmati promo spektakuler ini. '
                      'Promo terbatas hanya untuk 100 pembeli pertama setiap harinya. '
                      'Jangan sampai kehabisan!',
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

          // Back Button
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