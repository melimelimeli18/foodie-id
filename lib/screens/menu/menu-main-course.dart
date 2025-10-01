import 'package:flutter/material.dart';

class MenuMainCourse extends StatelessWidget {
  const MenuMainCourse({super.key});

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
                    'Main Course',
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
            
            // menu main course dlm grid
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
                      'Chicken Katsu Curry',
                      'assets/menu/main-course/chicken-katsu-curry.png',
                      40000,
                      '/menu-chicken-katsu-curry',
                    ),
                    _buildMenuItem(
                      context,
                      'Teriyaki Chicken Rice',
                      'assets/menu/main-course/teriyaki-chicken-rice.png',
                      30000,
                      '/menu-teriyaki-chicken-rice',
                    ),
                    _buildMenuItem(
                      context,
                      'Spaghetti Aglio e Olio',
                      'assets/menu/main-course/spaghetti.png',
                      35000,
                      '/menu-spaghetti-olio',
                    ),
                    _buildMenuItem(
                      context,
                      'Korean Fried Chicken',
                      'assets/menu/main-course/kfc.png',
                      60000,
                      '/menu-fried-chicken',
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

  Widget _buildMenuItem(BuildContext context, String name, String imagePath, int price, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
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
              // ignore: deprecated_member_use
              color: const Color(0xFF000000).withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            // nama main course
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
            
            // foto main course
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
            // harga & button buat add main course ke cart
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