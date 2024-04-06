class PertanyaanModel {
  final String question; // Variabel untuk menyimpan teks pertanyaan
  final Map<String, bool>
      answers; // Variabel untuk menyimpan pilihan jawaban beserta status kebenarannya

  PertanyaanModel(this.question,
      this.answers); // Konstruktor untuk inisialisasi objek PertanyaanModel dengan parameter teks pertanyaan dan pilihan jawaban
}
