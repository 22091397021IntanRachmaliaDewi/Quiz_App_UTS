import 'package:flutter/material.dart';

class CreditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Kerangka utama halaman
      appBar: AppBar(
        // Baris atas
        title: Text('Credit'), // Judul
        leading: IconButton(
          // Tombol kembali
          icon: Icon(Icons.arrow_back), // Ikon panah kembali
          color: Colors.white, // Warna ikon
          onPressed: () {
            Navigator.pop(
                context); // Fungsi untuk kembali ke layar sebelumnya saat tombol ditekan
          },
        ),
        titleTextStyle:
            TextStyle(color: Colors.white, fontSize: 20), // Gaya teks judul
        backgroundColor: Color(0xFF311E3A), // Warna latar belakang
      ),
      body: Container(
        decoration: BoxDecoration(
          // Latar belakang dengan gambar
          image: DecorationImage(
            image: AssetImage('images/bgcredit.png'), // Gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Menambahkan gambar dengan teks di bawahnya
              Container(
                width: 150, // Sesuaikan lebar gambar sesuai kebutuhan
                height: 150, // Sesuaikan tinggi gambar sesuai kebutuhan
                child: Transform.scale(
                  // Mengubah skala gambar
                  scale: 2.0, // Perbesar gambar
                  child: Image.asset(
                    'images/kelompok3.png', // Lokasi gambar
                    width: 1000, // Sesuaikan ukuran gambar sesuai kebutuhan
                    height: 100, // Sesuaikan ukuran gambar sesuai kebutuhan
                  ),
                ),
              ),
              SizedBox(height: 5), // Jarak antara gambar dan teks
              Text(
                // Teks nama anggota kelompok
                'Adellia (22091397002)\nVerani Fajrin Triana (22091397018)\nIntan Rachmalia Dewi (22091397021)',
                textAlign:
                    TextAlign.center, // Penataan teks menjadi rata tengah
                style: TextStyle(
                    color: Color(0xFF311E3A), fontSize: 20), // Gaya teks
              ),
            ],
          ),
        ),
      ),
    );
  }
}
