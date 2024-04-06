import 'package:flutter/material.dart';
import 'package:quiz_coba/data/list_pertanyaan.dart'; // Impor daftar pertanyaan
import 'package:quiz_coba/screens/tampilan_hasil.dart'; // Impor tampilan hasil

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Color mainColor = Colors.white; // Warna utama
  Color secondColor = Color(0xFF311E3A); // Warna kedua
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false; // Variabel penanda tombol ditekan
  Color isTrue = Colors.green; // Warna indikator jawaban benar
  Color isWrong = Colors.red; // Warna indikator jawaban salah
  int score = 0; // Skor awal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Kerangka utama halaman
      body: Container(
        decoration: BoxDecoration(
          // Latar belakang dengan gambar
          image: DecorationImage(
            image: AssetImage("images/bgquiz.png"), // Gambar latar belakang
            fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran layar
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(18.0), // Padding untuk konten
          child: PageView.builder(
            physics:
                const NeverScrollableScrollPhysics(), // Mematikan scrolling
            controller: _controller!,
            onPageChanged: (page) {
              setState(() {
                isPressed =
                    false; // Set tombol tidak ditekan saat halaman berubah
              });
            },
            itemCount: questions.length, // Jumlah total pertanyaan
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Menampilkan nomor pertanyaan
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Soal ${index + 1}/${questions.length}",
                      style: const TextStyle(
                        color: Color(0xFF311E3A), // Warna teks
                        fontWeight: FontWeight.w400, // Ketebalan teks
                        fontSize: 28.0, // Ukuran teks
                      ),
                    ),
                  ),
                  // Garis pemisah antara nomor pertanyaan dan pertanyaan
                  const Divider(
                    color: Color(0xFF311E3A), // Warna garis pemisah
                    height: 8.0, // Tinggi garis pemisah
                    thickness: 1.5, // Ketebalan garis pemisah
                  ),
                  Spacer(),
                  // Menampilkan pertanyaan
                  Text(
                    questions[index].question,
                    style: const TextStyle(
                      color: Colors.white, // Warna teks pertanyaan
                      fontSize: 28.0, // Ukuran teks pertanyaan
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  // Menampilkan pilihan jawaban
                  for (int i = 0; i < questions[index].answers.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 18.0),
                      child: MaterialButton(
                        shape: StadiumBorder(), // Bentuk tombol
                        color: isPressed
                            ? questions[index].answers.entries.toList()[i].value
                                ? isTrue
                                : isWrong
                            : secondColor, // Warna tombol
                        padding: EdgeInsets.symmetric(
                            horizontal: 60.0, vertical: 18.0), // Padding tombol
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true; // Set tombol ditekan
                                });
                                if (questions[index]
                                    .answers
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 10; // Tambah skor jika jawaban benar
                                  print(score); // Cetak skor
                                }
                              },
                        child: Text(
                          questions[index]
                              .answers
                              .keys
                              .toList()[i], // Teks jawaban
                          style: TextStyle(
                            color: Colors.white, // Warna teks jawaban
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 50.0,
                  ),
                  // Tombol untuk lanjut ke pertanyaan berikutnya atau lihat hasil jika sudah pada pertanyaan terakhir
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: isPressed
                            ? index + 1 == questions.length
                                ? () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HalamanHasil(
                                                score))); // Navigasi ke tampilan hasil
                                  }
                                : () {
                                    _controller!.nextPage(
                                        duration: Duration(microseconds: 500),
                                        curve: Curves
                                            .linear); // Pindah ke pertanyaan berikutnya
                                    setState(() {
                                      isPressed =
                                          false; // Set tombol tidak ditekan
                                    });
                                  }
                            : null,
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(), // Bentuk tombol
                          side: BorderSide(
                              color: Colors.black,
                              width: 1.0), // Garis tepi tombol
                          backgroundColor:
                              Color(0xFF311E3A), // Warna latar belakang tombol
                        ),
                        child: Text(
                            index + 1 == questions.length
                                ? "Lihat Hasil" // Teks tombol ketika sudah pada pertanyaan terakhir
                                : "Pertanyaan Selanjutnya", // Teks tombol ketika masih ada pertanyaan selanjutnya
                            style: TextStyle(
                                color: Colors.white)), // Warna teks tombol
                      ),
                    ],
                  ),
                  Spacer()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
