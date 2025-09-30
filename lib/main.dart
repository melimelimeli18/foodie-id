import 'package:flutter/material.dart';

// Home - Gatha
import 'screens/home/home-screen.dart';
import 'screens/home/onboarding-screen.dart';
import 'screens/home/promo-one.dart';
import 'screens/home/promo-tree.dart';
import 'screens/home/promo-two.dart';
import 'screens/home/splash-screen.dart';

// Menu - Gebi
import 'screens/menu/menu-screen.dart';
import 'screens/menu/menu-main-course.dart';
import 'screens/menu/menu-snacks.dart';
import 'screens/menu/menu-drinks.dart';
import 'screens/menu/menu-desserts.dart';

// Sub Menu - Meli
// import 'screens/menu/sub-menu/menu-desserts.dart';
// import 'screens/menu/sub-menu/menu-drinks.dart';

// Checkout - Jeje
import 'screens/checkout/checkout-page.dart';
import 'screens/checkout/qris-invoice.dart';
import 'screens/checkout/qris-page.dart';
import 'screens/checkout/qris-success.dart';

// Profile - Caca
import 'screens/profile/profile-screen.dart';
import 'screens/profile/edit-profile.dart';
import 'screens/profile/contact-us.dart';
import 'screens/profile/faq-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie.id',
      debugShowCheckedModeBanner: false,
      // GANTI DISINI BUAT SCREEN, SESUAI ROUTES
      initialRoute: '/menu',

      routes: {
        // Home
        // '/home': (context) => const HomeScreen(),
        // '/onboarding': (context) => const OnboardingScreen(),
        // '/promo-one': (context) => const PromoOne(),
        // '/promo-two': (context) => const PromoTwo(),
        // '/promo-tree': (context) => const PromoTree(),
        // '/splash': (context) => const SplashScreen(),

        // Menu
        '/menu': (context) => const MenuScreen(),
        '/menu-main-course': (context) => const MenuMainCourse(),
        '/menu-snacks': (context) => const MenuSnacks(),
        '/menu-drinks': (context) => const MenuDrinks(),
        '/menu-desserts': (context) => const MenuDesserts(),

        // Sub Menu
        // '/menu-desserts': (context) => const MenuDesserts(),
        // '/menu-drinks': (context) => const MenuDrinks(),

        // Checkout
        // '/checkout': (context) => const CheckoutPage(),
        // '/qris-invoice': (context) => const QrisInvoice(),
        // '/qris-page': (context) => const QrisPage(),
        // '/qris-success': (context) => const QrisSuccess(),

        // Profile
        // '/profile': (context) => const ProfileScreen(),
        // '/edit-profile': (context) => const EditProfile(),
        // '/contact-us': (context) => const ContactUs(),
        // '/faq': (context) => const FaqPage(),
      },
    );
  }
}
