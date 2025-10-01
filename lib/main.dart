import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';

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

//Cart
import 'screens/cart/cart-screen.dart';

// Sub Menu - Meli
import 'screens/menu/sub-menu/menu-cheese-boba-latte.dart';
import 'screens/menu/sub-menu/menu-chocolate-mousse.dart';
import 'screens/menu/sub-menu/menu-brown-sugar-milk-tea.dart';
import 'screens/menu/sub-menu/menu-iced-caramel-macchiato.dart';
import 'screens/menu/sub-menu/menu-biscoff-hot-chocolate.dart';

import 'screens/menu/sub-menu/menu-matcha-soft-serve.dart';
import 'screens/menu/sub-menu/menu-mango-sticky-rice.dart';
import 'screens/menu/sub-menu/menu-fudge-sundae.dart';
import 'screens/menu/sub-menu/menu-red-velvet-cheesecake.dart';

import 'screens/menu/sub-menu/menu-chicken-katsu-curry.dart';
import 'screens/menu/sub-menu/menu-teriyaki-chicken-rice.dart';
import 'screens/menu/sub-menu/menu-spaghetti-olio.dart';
import 'screens/menu/sub-menu/menu-fried-chicken.dart';

import 'screens/menu/sub-menu/menu-loaded-fries.dart';
import 'screens/menu/sub-menu/menu-mozarella-sticks.dart';
import 'screens/menu/sub-menu/menu-takoyaki-balls.dart';
import 'screens/menu/sub-menu/menu-crispy-chicken-skin.dart';

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
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Foodie.id',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: 'Plus Jakarta Sans',
        ),
        initialRoute: '/splash',
        routes: {
          // Splash Screen
          '/splash': (context) => const SplashScreen(),

          // Home
          '/home': (context) => const HomeScreen(),
          '/onboarding': (context) => const OnboardingScreen(),
          '/promo-one': (context) => const PromoOne(),
          '/promo-two': (context) => const PromoTwo(),
          '/promo-tree': (context) => const PromoTree(),

          // Menu
          '/menu': (context) => const MenuScreen(),
          '/menu-main-course': (context) => const MenuMainCourse(),
          '/menu-snacks': (context) => const MenuSnacks(),
          '/menu-drinks': (context) => const MenuDrinks(),
          '/menu-desserts': (context) => const MenuDesserts(),

          //Cart
          '/cart-screen': (context) => const CartScreen(),

          // Sub Menu
          // Minuman
          '/menu-biscoff-hot-chocolate': (context) =>
              const MenuBiscoffHotChocolate(),
          '/menu-brown-sugar-milk-tea': (context) =>
              const MenuBrownSugarMilkTea(),
          '/menu-cheese-boba-latte': (context) => const MenuCheeseBobaLatte(),
          '/menu-iced-caramel-macchiato': (context) =>
              const MenuIcedCaramelMacchiato(),
          '/menu-chocolate-mousse': (context) => const MenuChocolateMousse(),

          // Main Course
          '/menu-chicken-katsu-curry': (context) =>
              const MenuChickenKatsuCurry(),
          '/menu-teriyaki-chicken-rice': (context) =>
              const MenuTeriyakiChickenRice(),
          '/menu-spaghetti-olio': (context) => const MenuSpaghettiOlio(),
          '/menu-fried-chicken': (context) => const MenuFriedChicken(),

          // Dessert & Snack
          '/menu-crispy-chicken-skin': (context) =>
              const MenuCrispyChickenSkin(),
          '/menu-mango-sticky-rice': (context) => const MenuMangoStickyRice(),
          '/menu-fudge-sundae': (context) => const MenuFudgeSundae(),
          '/menu-red-velvet-cheesecake': (context) =>
              const MenuRedVelvetCheesecake(),
          '/menu-loaded-fries': (context) => const MenuLoadedFries(),
          '/menu-mozarella-sticks': (context) => const MenuMozarellaSticks(),
          '/menu-takoyaki-balls': (context) => const MenuTakoyakiBalls(),
          '/menu-matcha-soft-serve': (context) => const MenuMatchaSoftServe(),

          // Checkout
          '/checkout': (context) => CheckoutPage(),
          '/qris-invoice': (context) => QrisInvoice(),
          '/qris-page': (context) => QrisPage(),
          '/qris-success': (context) => QrisSuccess(),

          // Profile
          '/profile': (context) => const ProfileScreen(),
          '/edit-profile': (context) => const EditProfile(),
          '/contact-us': (context) => const ContactUs(),
          '/faq': (context) => const FaqPage(),
        },
      ),
    );

    // return MaterialApp(
    //   title: 'Foodie.id',
    //   debugShowCheckedModeBanner: false,
    //   // GANTI DISINI BUAT SCREEN, SESUAI ROUTES
    //   initialRoute: '/splash',

    //   routes: {
    //     // Splash Screen
    //     '/splash': (context) => const SplashScreen(),

    //     // Home
    //     '/home': (context) => const HomeScreen(),
    //     '/onboarding': (context) => const OnboardingScreen(),
    //     '/promo-one': (context) => const PromoOne(),
    //     '/promo-two': (context) => const PromoTwo(),
    //     '/promo-tree': (context) => const PromoTree(),

    //     // Menu
    //     '/menu': (context) => const MenuScreen(),
    //     '/menu-main-course': (context) => const MenuMainCourse(),
    //     '/menu-snacks': (context) => const MenuSnacks(),
    //     '/menu-drinks': (context) => const MenuDrinks(),
    //     '/menu-desserts': (context) => const MenuDesserts(),

    //     //Cart
    //     '/cart-screen': (context) => const CartScreen(),

    //     // Sub Menu
    //     // Minuman
    //     '/menu-biscoff-hot-chocolate': (context) =>
    //         const MenuBiscoffHotChocolate(),
    //     '/menu-brown-sugar-milk-tea': (context) =>
    //         const MenuBrownSugarMilkTea(),
    //     '/menu-cheese-boba-latte': (context) => const MenuCheeseBobaLatte(),
    //     '/menu-iced-caramel-macchiato': (context) =>
    //         const MenuIcedCaramelMacchiato(),
    //     '/menu-chocolate-mousse': (context) => const MenuChocolateMousse(),

    //     // Main Course
    //     '/menu-chicken-katsu-curry': (context) => const MenuChickenKatsuCurry(),
    //     '/menu-teriyaki-chicken-rice': (context) =>
    //         const MenuTeriyakiChickenRice(),
    //     '/menu-spaghetti-olio': (context) => const MenuSpaghettiOlio(),
    //     '/menu-fried-chicken': (context) => const MenuFriedChicken(),
    //     '/menu-crispy-chicken-skin': (context) => const MenuCrispyChickenSkin(),

    //     // Dessert & Snack
    //     '/menu-mango-sticky-rice': (context) => const MenuMangoStickyRice(),
    //     '/menu-fudge-sundae': (context) => const MenuFudgeSundae(),
    //     '/menu-red-velvet-cheesecake': (context) =>
    //         const MenuRedVelvetCheesecake(),
    //     '/menu-loaded-fries': (context) => const MenuLoadedFries(),
    //     '/menu-mozarella-sticks': (context) => const MenuMozarellaSticks(),
    //     '/menu-takoyaki-balls': (context) => const MenuTakoyakiBalls(),
    //     '/menu-matcha-soft-serve': (context) => const MenuMatchaSoftServe(),

    //     // Checkout
    //     '/checkout': (context) => CheckoutPage(),
    //     '/qris-invoice': (context) => QrisInvoice(),
    //     '/qris-page': (context) => QrisPage(),
    //     '/qris-success': (context) => QrisSuccess(),

    //     // Profile
    //     '/profile': (context) => const ProfileScreen(),
    //     '/edit-profile': (context) => const EditProfile(),
    //     '/contact-us': (context) => const ContactUs(),
    //     '/faq': (context) => const FaqPage(),
    //   },
    // );
  }
}
