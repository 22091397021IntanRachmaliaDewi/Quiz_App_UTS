import 'package:flutter/material.dart';
import 'package:quiz_coba/screens/StartQuizScreen.dart';
import 'package:quiz_coba/screens/CreditScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Menu', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna tema utama
      ),
      home:
          DashboardScreen(), // Menetapkan DashboardScreen sebagai layar beranda
      debugShowCheckedModeBanner:
          false, // Menyembunyikan banner debug di sudut kanan atas
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Menu'), // Judul AppBar
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Color(0xFF311E3A),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "images/bgdashboard.png"), // Menambahkan latar belakang gambar
            fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran kontainer
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "images/logo.png", // Menampilkan gambar
                    height: 280, // Mengatur tinggi gambar
                  ),
                  SizedBox(height: 10), // Jarak antara gambar dan teks
                  Text(
                    "Let's Play Quiz", // Teks judul aplikasi
                    style: TextStyle(
                      color: Color(0xFFF4F4F4), // Warna teks
                      fontSize: 20, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara teks dan tombol
              SizedBox(
                height: 50, // Mengatur tinggi tombol
                width: 130, // Mengatur lebar tombol
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuizScreen()), // Pindah ke layar QuizScreen saat tombol ditekan
                    );
                  },
                  child: Text('Start Quiz'), // Teks tombol
                ),
              ),
              SizedBox(height: 15), // Jarak antara tombol
              SizedBox(
                height: 50, // Mengatur tinggi tombol
                width: 130, // Mengatur lebar tombol
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CreditScreen()), // Pindah ke layar CreditScreen saat tombol ditekan
                    );
                  },
                  child: Text('Credit'), // Teks tombol
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
