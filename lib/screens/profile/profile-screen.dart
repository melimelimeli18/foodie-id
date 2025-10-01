import 'package:flutter/material.dart';
import 'edit-profile.dart';
import 'faq-page.dart';
import 'contact-us.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 90, 44, 1),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
              child: const Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/profile/profiles.png"),
            ),
            const SizedBox(height: 8),
            const Text(
              "Caca",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            ProfileMenu(
              icon: Icons.person,
              text: "My Account",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfile()),
              ),
            ),
            ProfileMenu(
              icon: Icons.help_outline,
              text: "FAQ",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FaqPage()),
              ),
            ),
            ProfileMenu(
              icon: Icons.phone,
              text: "Contact Us",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUs()),
              ),
            ),
            ProfileMenu(
              icon: Icons.logout,
              text: "Logout",
              press: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: _buildNavItem(Icons.home, 'HOME', false),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/menu');
              },
              child: _buildNavItem(Icons.restaurant_menu, 'MENU', false),
            ),
            GestureDetector(
              onTap: () {},
              child: _buildNavItem(Icons.person, 'PROFILE', true),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: const Color.fromRGBO(232, 90, 44, 1),
          size: 26,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 14,
            color: const Color.fromRGBO(232, 90, 44, 1),
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback press;

  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(255, 229, 229, 1), // peach card
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          elevation: 0,
          alignment: Alignment.centerLeft,
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(icon, color: const Color.fromRGBO(232, 90, 44, 1)),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
