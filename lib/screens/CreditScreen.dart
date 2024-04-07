import 'package:flutter/material.dart';

class CreditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            children: [
              // Memanggil fungsi CardProfile dengan parameter yang sesuai
              CardProfile('images/adel.jpg', 'Adellia', '22091397002',
                  'adellia.22002@mhs.unesa.ac.id'),
              CardProfile('images/rynn.jpg', 'Verani Fajrin T.', '22091397018',
                  'verani.22018@mhs.unesa.ac.id'),
              CardProfile('images/intan.JPG', 'Intan Rachmalia D.',
                  '22091397021', 'intanrachmalia.22021@mhs.unesa.ac.id'),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget untuk menampilkan informasi profil mahasiswa
  ///
  /// [profil] : String, path gambar profil
  /// [nama] : String, nama mahasiswa
  /// [nim] : String, Nomor Induk Mahasiswa
  /// [email] : String, email mahasiswa

  Widget CardProfile(profil, nama, nim, email) => Container(
        height: 550,
        margin: EdgeInsets.only(left: 70, right: 50),
        child: Card(
          color: Colors.purple[50],
          child: Padding(
            padding: EdgeInsets.only(top: 60, right: 60, left: 60, bottom: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('$profil'),
                  ),
                ),
                // Widget untuk menampilkan nama
                Text(
                  '$nama',
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xFF311E3A),
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 10), // Memberikan jarak antara nama dan garis bawah
                // Garis bawah untuk memisahkan nama dan NIM
                SizedBox(
                  width: 150.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                    height: 10), // Memberikan jarak antara garis bawah dan NIM
                // Widget untuk menampilkan NIM
                Text(
                  '$nim',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[850],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10), // Memberikan jarak antara NIM dan email
                // Widget untuk menampilkan email
                Text(
                  '$email',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      );
}
