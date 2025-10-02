import 'package:flutter/material.dart';

class QrisInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  
                  // struk pembayaran sukses
                  Container(
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

                  SizedBox(height: 23),

                  // teks konfirmasi
                  Text(
                    'Pembayaran Berhasil',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 28,
                    ),
                  ),

                  SizedBox(height: 28),

                  // invoice card
                  Container(
                    width: 359,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Color(0xFFEFEFEF),
                    ),
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

                  SizedBox(height: 79),

                  // download button utk download struk
                  InkWell(
                    onTap: () {
                      // Logika download struk di sini
                      // Untuk saat ini hanya menampilkan snackbar sebagai contoh
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Struk berhasil diunduh'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(253, 129, 89, 1),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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

                  SizedBox(height: 24),

                  // back button ke home
                  InkWell(
                    onTap: () {
                      // kembali ke home page
                      Navigator.pushNamedAndRemoveUntil(
                        context, 
                        '/home', 
                        (route) => false,
                      );
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

                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // helper method utk bikin baris di invoice
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