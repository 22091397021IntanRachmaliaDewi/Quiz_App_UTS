import 'package:flutter/material.dart';
import 'package:quiz_coba/main.dart';

class HalamanHasil extends StatefulWidget {
  final int score;

  // Konstruktor HalamanHasil untuk menerima skor dari quiz
  const HalamanHasil(this.score, {Key? key}) : super(key: key);

  @override
  State<HalamanHasil> createState() => _HalamanHasilState();
}

class _HalamanHasilState extends State<HalamanHasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold sebagai kerangka utama halaman
      body: Container(
        decoration: BoxDecoration(
          // Latar belakang dengan gambar
          image: DecorationImage(
            image: AssetImage("images/bghasil.png"), // Gambar latar belakang
            fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran layar
          ),
        ),
        child: Center(
          // Widget Center untuk mengatur konten ke tengah layar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Judul "Quiz Selesai"
              Text(
                "Quiz Selesai",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Label Skor
              Text(
                "Skor kamu:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50.0),
              // Tampilan skor pengguna
              Text(
                "${widget.score}",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              // Tombol "Ulangi Quiz"
              MaterialButton(
                onPressed: () {
                  // Navigasi kembali ke layar dashboard dan hapus riwayat navigasi
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),
                      (route) => false);
                },
                elevation: 0.0,
                color: Colors.orange,
                textColor: Colors.white,
                child: Text("Ulangi Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
