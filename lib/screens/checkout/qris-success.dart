import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/checkout/qris-invoice.dart';

class QrisSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => QrisInvoice()),
                    );
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 221, 210, 1),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(253, 129, 89, 1),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(flex: 2),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(46, 204, 113, 1),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(6, 6),
                    blurRadius: 40,
                  ),
                ],
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 50,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Pembayaran berhasil',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(flex: 3),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 47.0, vertical: 40),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => QrisInvoice()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(253, 129, 89, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Lihat Struk',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
