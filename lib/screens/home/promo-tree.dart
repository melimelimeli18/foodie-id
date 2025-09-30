import 'package:flutter/material.dart';

class PromoTree extends StatelessWidget {
  const PromoTree({super.key});

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
                  image: AssetImage('assets/home/promo/promo6.png'),
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
                      'Gratis Ongkir Tanpa Minimum',
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
                      'Kabar gembira untuk kamu yang suka pesan online! Sekarang kamu bisa menikmati '
                      'gratis ongkir untuk semua pesanan, tanpa minimum pembelian.\n\n'
                      'Mau pesan satu minuman aja? Boleh! Mau pesan banyak? Lebih hemat lagi! '
                      'Semua dapat gratis ongkir sepuasnya.\n\n'
                      'Promo berlaku untuk semua area pengiriman dalam radius 5km dari outlet terdekat. '
                      'Nikmati makanan dan minuman favorit kamu langsung di rumah tanpa biaya tambahan. '
                      'Promo terbatas, buruan pesan sekarang!',
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