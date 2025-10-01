import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.deepOrange),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("FAQ", style: TextStyle(color: Colors.deepOrange)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          FAQItem(
            question: "Bagaimana cara memesan makanan?",
            answer:
                "Pilih menu yang diinginkan, masukkan ke keranjang, lalu bayar menggunakan metode pembayaran yang tersedia.",
          ),
          FAQItem(
            question: "Bagaimana cara menggunakan promo?",
            answer:
                "Masukkan kode promo saat checkout, jangan lupa perhatikan syarat dan ketentuan yang berlaku.",
          ),
          FAQItem(
            question: "Apa yang harus dilakukan jika pesanan salah atau kurang?",
            answer:
                "Hubungi kamu di bagian Contact Us dan sertakan foto makanan.",
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(question, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(answer, style: const TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }
}
