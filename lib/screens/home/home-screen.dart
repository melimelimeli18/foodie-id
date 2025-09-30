import 'package:flutter/material.dart';
import 'dart:async';

// Import file-file promo screen yang sudah ada
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
              // Header dengan gradient + search bar overlap
              _buildHeader(),
              
              const SizedBox(height: 40), // Extra space karena search overlap
              
              // Section Promo
              _buildSectionTitle('Promo'),
              const SizedBox(height: 12),
              const AutoSlidingPromo(), // Widget baru
              
              const SizedBox(height: 30),
              
              // Section Rekomendasi
              _buildSectionTitle('Rekomendasi'),
              const SizedBox(height: 12),
              _buildRecommendationList(),
              
              const SizedBox(height: 30), // Space for bottom nav
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildHeader() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Gradient background
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
                // Reward Card
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
        // Search bar positioned overlapping
        Positioned(
          bottom: -20,
          left: 22,
          right: 22,
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
      ],
    );
  }

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

  Widget _buildRecommendationList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          _buildRecommendationCard(
            'Brown Sugar Milk Tea',
            'Rp 30.000,00',
          ),
          SizedBox(height: 20),
          _buildRecommendationCard(
            'Iced Caramel Macchiato',
            'Rp 30.000,00',
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(String name, String price) {
    return Container(
      height: 140,
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
            // Product name
            Positioned(
              top: 17,
              left: 17,
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Price
            Positioned(
              bottom: 15,
              left: 13,
              child: Text(
                price,
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 15,
                ),
              ),
            ),
            // Add button
            Positioned(
              bottom: 15,
              right: 15,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Color.fromRGBO(232, 90, 44, 1),
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
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
          _buildNavItem(Icons.home, 'HOME', true),
          _buildNavItem(Icons.restaurant_menu, 'MENU', false),
          _buildNavItem(Icons.person, 'PROFILE', false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
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
    );
  }
}

// Widget AutoSlidingPromo dengan navigation ke file promo terpisah
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

  // List widget tujuan untuk setiap promo
  final List<Widget> _promoScreens = [
    PromoOne(), // dari promo-one.dart
    PromoTwo(), // dari promo-two.dart
    PromoTree(), // dari promo-tree.dart
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
          // Promo Slider
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
                    // Navigate ke screen promo yang sesuai
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
          
          // Dots Indicator
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