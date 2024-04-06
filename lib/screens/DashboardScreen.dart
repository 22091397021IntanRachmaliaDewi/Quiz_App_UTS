import 'package:flutter/material.dart';
import 'package:quiz_coba/screens/StartQuizScreen.dart'; // Impor layar StartQuizScreen
import 'package:quiz_coba/screens/CreditScreen.dart'; // Impor layar CreditScreen

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Kerangka utama halaman
      appBar: AppBar(
        title: Text('Dashboard Menu'), // Judul baris atas
      ),
      body: Center(
        // Widget pusat
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          QuizScreen()), // Navigasi ke layar QuizScreen saat tombol ditekan
                );
              },
              child: Text('Start Quiz'), // Teks tombol untuk memulai kuis
            ),
            SizedBox(height: 20), // Jarak vertikal antara tombol
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CreditScreen()), // Navigasi ke layar CreditScreen saat tombol ditekan
                );
              },
              child: Text('Credit'), // Teks tombol untuk melihat kredit
            ),
          ],
        ),
      ),
    );
  }
}
