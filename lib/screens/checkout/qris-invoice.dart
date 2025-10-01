import 'package:flutter/material.dart';

class QrisInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: 393,
          height: 852,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: <Widget>[
              //bg card
              Positioned(
                top: 200,
                left: 17,
                child: Container(
                  width: 359,
                  height: 311,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Color(0xFFEFEFEF),
                  ),
                ),
              ),

              //success icon
              Positioned(
                top: 43,
                left: 167,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(6, 6),
                        blurRadius: 40,
                      )
                    ],
                    color: Color.fromRGBO(46, 204, 113, 1),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),

              //title text
              Positioned(
                top: 136,
                left: 58,
                child: Text(
                  'Pembayaran Berhasil',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 28,
                  ),
                ),
              ),

              //isi invoice
              Positioned(
                top: 210,
                left: 30,
                right: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRow('Tanggal', '27 Agustus 2025'),
                    SizedBox(height: 10),
                    _buildRow('Harga', 'Rp 35.000'),
                    SizedBox(height: 10),
                    _buildRow('Jumlah', '1'),
                    SizedBox(height: 10),
                    _buildRow('Metode', 'QRIS'),
                    SizedBox(height: 10),
                    Divider(
                      thickness: 1.2,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(height: 10),
                    _buildRow('Sub Total', 'Rp 35.000'),
                    SizedBox(height: 10),
                    _buildRow('Pajak (10%)', 'Rp 3.500'),
                    SizedBox(height: 10),
                    _buildRow('Total', 'Rp 38.500', isBold: true),
                  ],
                ),
              ),

              //download button
              Positioned(
                top: 590,
                left: 42,
                child: InkWell(
                  onTap: () {
                    print('Download receipt');
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(253, 129, 89, 1),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Download Struk',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //back button
              Positioned(
                top: 664,
                left: 42,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(34, 34, 34, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Kembali ke halaman',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //back button (top left)
              Positioned(
                top: 33,
                left: 14,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 221, 210, 1),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(253, 129, 89, 1),
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 20,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
