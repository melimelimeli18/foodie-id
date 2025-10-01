import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/checkout/qris-invoice.dart';
import 'package:flutter_application_1/screens/checkout/qris-page.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int quantity = 1;
  final int itemPrice = 35000;

  int get subTotal => itemPrice * quantity;
  int get tax => (subTotal * 0.1).round();
  int get total => subTotal + tax;

  String formatRupiah(int amount) {
    return 'Rp ${amount.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header utk tombol kembali
                Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFDDD2),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFFD8159),
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                    ),
                    SizedBox(width: 42),
                  ],
                ),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFB6B6),
                        Color(0xFFFFF7D3),
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //foto produk
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/Biscoff Hot Chocolate.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),

                      //detail produk
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Biscoff Hot Chocolate',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Plus Jakarta Sans',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              formatRupiah(itemPrice),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: 'Plus Jakarta Sans',
                              ),
                            ),
                            SizedBox(height: 8),
                            //quantity
                            Container(
                              width: 100,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEFEFEF),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (quantity > 1) {
                                        setState(() => quantity--);
                                      }
                                    },
                                    child: Icon(Icons.remove, size: 16),
                                  ),
                                  Text(
                                    '$quantity',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Plus Jakarta Sans',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() => quantity++);
                                    },
                                    child: Icon(Icons.add, size: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                //deskripsi
                Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Biscoff Hot Chocolate dengan cokelat hangat yang rich berpadu lembut bersama rasa karamel-rempah khas Biscoff, menghadirkan kehangatan manis yang memanjakan di setiap tegukan.', // Mengembalikan deskripsi awal
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: Colors.black87,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),

                SizedBox(height: 20),

                //note
                Text(
                  'Note',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEFEFEF),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 15),
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                ),

                SizedBox(height: 20),

                //bayar
                Text(
                  'Bayar',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEFEFEF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'QRIS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, size: 24),
                    ],
                  ),
                ),

                SizedBox(height: 24),

                //subtotal, pajak, total
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    Text(
                      formatRupiah(subTotal),
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pajak (10%)',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    Text(
                      formatRupiah(tax),
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    Text(
                      formatRupiah(total),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                //button utk bayar skr
                SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFD8159),
                      foregroundColor: Color(0xFF222222),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => QrisPage()),
                      );
                    },
                    child: Text(
                      'Bayar Sekarang',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
