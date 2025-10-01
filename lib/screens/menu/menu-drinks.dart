import 'package:flutter/material.dart';

class MenuDrinks extends StatelessWidget {
  const MenuDrinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            // header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // button buat ngeback
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFDDD2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xFFFF6B35),
                        size: 20,
                      ),
                    ),
                  ),
                  
                  // judul diatas
                  const Text(
                    'Drinks',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  
                  // button cart
                  GestureDetector(
                    onTap: () {
                      print('Cart clicked');
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xFFFF6B35),
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // menu drinks dlm grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.65,
                  children: [
                    _buildMenuItem(
                      context,
                      'Chocolate Mousse',
                      'assets/menu/drinks/chocolate-mousse.png',
                      35000,
                    ),
                    _buildMenuItem(
                      context,
                      'Brown Sugar Milk Tea',
                      'assets/menu/drinks/brown-sugar.png',
                      30000,
                    ),
                    _buildMenuItem(
                      context,
                      'Iced Caramel Macchiato',
                      'assets/menu/drinks/iced-caramel.png',
                      25000,
                    ),
                    _buildMenuItem(
                      context,
                      'Biscoff Hot Chocolate',
                      'assets/menu/drinks/biscoff.png',
                      25000,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String name, String imagePath, int price) {
    return GestureDetector(
      onTap: () {
        print('$name clicked');
        // Navigate to detail screen or show dialog
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFC1A1),
              Color(0xFFFFF1C1),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            // nama drinks
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ),
            
            // foto drinks
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
            // harga & button buat add drinks ke cart
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Rp',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        price.toString().replaceAllMapped(
                          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                          (Match m) => '${m[1]}.',
                        ),
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  
                  // button add ke cart
                  GestureDetector(
                    onTap: () {
                      print('Add $name to cart');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$name ditambahkan ke keranjang'),
                          duration: const Duration(seconds: 1),
                          backgroundColor: const Color(0xFFFF6B35),
                        ),
                      );
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF000000),
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}