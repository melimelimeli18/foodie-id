import 'package:flutter/material.dart';

class QrisPage extends StatelessWidget {
  final int? totalAmount;

  const QrisPage({Key? key, this.totalAmount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Text(
                    'QRIS',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 30),

                  //QRIS code container
                  Container(
                    width: 343,
                    height: 369,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(4, 4),
                          blurRadius: 20,
                        ),
                      ],
                      color: Color.fromRGBO(250, 250, 250, 1),
                    ),
                    child: Center(
                      child: Container(
                        width: 291,
                        height: 291,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/QR CODE.png',
                            width: 291,
                            height: 291,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Icon(
                                  Icons.qr_code_2,
                                  size: 200,
                                  color: Colors.grey[400],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 88),

                  //instruction text
                  Text(
                    'Tunjukkan kode ini ke kasir',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),

                  const SizedBox(height: 48),

                  //pay button
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/qris-success');
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(253, 129, 89, 1),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Bayar Sekarang',
                          style: TextStyle(
                            color: Color.fromRGBO(34, 34, 34, 1),
                            fontFamily: 'PlusJakartaSans',
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),

          //back button
          Positioned(
            top: 40,
            left: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(253, 129, 89, 1),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
