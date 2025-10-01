import 'package:flutter/material.dart';
import 'dart:async';
import 'promo-one.dart';
import 'promo-two.dart';
import 'promo-tree.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // header nya ada reedem, search bar, cart button
              _buildHeader(context),
              
              const SizedBox(height: 40), 
              
              // Promo
              _buildSectionTitle('Promo'),
              const SizedBox(height: 12),
              const AutoSlidingPromo(), 
              
              const SizedBox(height: 30),
              
              // Rekomendasi
              _buildSectionTitle('Rekomendasi'),
              const SizedBox(height: 12),
              _buildRecommendationList(),
              
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      // untuk bottom navigation ditaro paling bawah
      bottomNavigationBar: _buildBottomNav(context),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
        Container(
          height: 180,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(255, 107, 53, 0.75),
                Color.fromRGBO(255, 210, 63, 0.75),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),

                // membuat redeem section
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 221, 210, 1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Reward',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '50 point',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 249, 250, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Text(
                          'Redeem',
                          style: TextStyle(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // Search bar dan Cart button positioned overlapping
        Positioned(
          bottom: -20,
          left: 22,
          right: 22,
          child: Row(
            children: [
              // Search Bar
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color.fromRGBO(232, 90, 44, 1),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari makanan atau minuman...',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(232, 90, 44, 1),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    ),
                  ),
                ),
              ),
              
              SizedBox(width: 12), 
              
              // Shopping Cart Button
              GestureDetector(
                onTap: () {
                  print('Cart clicked');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Container(
                  width: 50,
                  height: 50,
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
                  child: const Center(
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color(0xFFFF6B35),
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

// buat section kek judul gitu, promo, rekomendasi
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

// buat widget rekomendasi
  Widget _buildRecommendationList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          _buildRecommendationCard(
            'Brown Sugar Milk Tea',
            'Rp30.000,00',
            'assets/home/boba.png',
          ),
          SizedBox(height: 20),
          _buildRecommendationCard(
            'Iced Caramel Macchiato',
            'Rp30.000,00',
            'assets/home/machi.png',
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(String name, String price, String imagePath) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
        color: Color.fromRGBO(255, 180, 150, 1),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(232, 90, 44, 0.1),
              Color.fromRGBO(255, 210, 63, 0.15),
            ],
          ),
        ),
        child: Stack(
          children: [
            
            Positioned(
              right: -20,
              top: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  imagePath,
                  height: 160,
                  width: 210,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Positioned(
              top: 20,
              left: 20,
              right: 150,
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                price,
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 15,
                ),
              ),
            ),
            
            Positioned(
              bottom: 15,
              right: 15,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  color: Color.fromRGBO(232, 90, 44, 1),
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// bikin navibar 
  Widget _buildBottomNav(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 235, 229, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(232, 90, 44, 1),
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(context, Icons.home, 'HOME', true, '/home'),
          _buildNavItem(context, Icons.restaurant_menu, 'MENU', false, '/menu'),
          _buildNavItem(context, Icons.person, 'PROFILE', false, '/profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, IconData icon, String label, bool isActive, String route) {
    return GestureDetector(
      onTap: () {
        if (!isActive) {
          Navigator.pushNamed(context, route);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color.fromRGBO(232, 90, 44, 1),
            size: 26,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              fontSize: 14,
              color: Color.fromRGBO(232, 90, 44, 1),
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

// ini buat auto sliding promo 
class AutoSlidingPromo extends StatefulWidget {
  const AutoSlidingPromo({super.key});

  @override
  State<AutoSlidingPromo> createState() => _AutoSlidingPromoState();
}

class _AutoSlidingPromoState extends State<AutoSlidingPromo> {
  late PageController _pageController;
  Timer? _timer;
  int _currentPage = 0;
  
  final List<String> _promoImages = [
    'assets/home/promo/promo1.png',
    'assets/home/promo/promo2.png',
    'assets/home/promo/promo3.png',
  ];

  final List<Widget> _promoScreens = [
    PromoOne(), 
    PromoTwo(), 
    PromoTree(), 
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1,
    );
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < _promoImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          
          SizedBox(
            height: 153,
            width: 390,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _promoImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => _promoScreens[index],
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    transform: Matrix4.identity()
                      ..scale(_currentPage == index ? 1.0 : 0.95),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(_currentPage == index ? 0.15 : 0.08),
                            offset: const Offset(0, 4),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _promoImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          
          const SizedBox(height: 16),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _promoImages.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: _currentPage == index ? 24 : 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? const Color.fromRGBO(232, 90, 44, 1)
                      : const Color.fromRGBO(232, 90, 44, 0.3),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}