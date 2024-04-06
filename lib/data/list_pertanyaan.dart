import 'package:quiz_coba/models/pertanyaan_model.dart'; // Impor model PertanyaanModel

List<PertanyaanModel> questions = [
  // List berisi kumpulan objek PertanyaanModel
  PertanyaanModel(
    "Apa yang dimaksud dengan hot reload dalam Flutter?",
    {
      "Proses pengaktifan aplikasi": false,
      "Pengembalian ke versi sebelumnya": false,
      "Memperbarui UI secara instan": true,
      "Memperbaiki bug": false,
    },
  ),
  PertanyaanModel("Apa fungsi dari widget Container dalam Flutter?", {
    "Menampilkan teks": false,
    "Menambahkan gambar": false,
    "Mengelola status aplikasi": false,
    "Mengatur tata letak": true,
  }),
  PertanyaanModel("Apa yang dimaksud dengan Widget Tree dalam Flutter?", {
    "Hierarki dari seluruh widget dalam aplikasi": true,
    "Pengaturan tata letak widget": false,
    "Daftar widget yang berada dalam baris": false,
    "Pengelolaan data dalam aplikasi": false,
  }),
  PertanyaanModel("Apa kegunaan dari widget Row dalam Flutter?", {
    "Mengatur elemen dalam satu kolom": false,
    "Menampilkan daftar": false,
    "Mengatur elemen dalam satu baris": true,
    "Menyembunyikan elemen": false,
  }),
  PertanyaanModel("Apa yang dimaksud dengan StatelessWidget dalam Flutter?", {
    "Widget yang tidak berubah": true,
    "Widget yang dapat berubah": false,
    "Widget yang dapat menyimpan data": false,
    "Widget yang dapat berinteraksi dengan pengguna": false,
  }),
  PertanyaanModel("Apa yang dilakukan oleh fungsi setState dalam Flutter?", {
    "Memperbarui UI secara otomatis": false,
    "Menghapus data dari aplikasi": false,
    "Mengubah nilai state dan membangun ulang widget": true,
    "Membuat instance baru dari widget": false,
  }),
  PertanyaanModel("Apa yang dimaksud dengan Flutter Doctor?", {
    "Dokter spesialis Flutter": false,
    "Plugin untuk Flutter Studio": false,
    "Tutorial penggunaan Flutter": false,
    "Alat untuk memeriksa kesehatan aplikasi Flutter ": true,
  }),
  PertanyaanModel("Apa fungsi dari widget Scaffold dalam Flutter?", {
    "Menambahkan lapisan keamanan": false,
    "Menyembunyikan elemen": false,
    "Menyediakan struktur dasar aplikasi": true,
    "Menampilkan pesan kesalahan": false,
  }),
  PertanyaanModel("Apa yang dimaksud dengan BuildContext dalam Flutter?", {
    "Konteks pembangunan aplikasi": false,
    "Konteks pengujian unit": false,
    "Konteks widget saat ini": true,
    "Konteks pengembangan": false,
  }),
  PertanyaanModel(
      "Apa yang dilakukan oleh fungsi Navigator.push dalam Flutter?", {
    "Pengaturan tata letak widget": false,
    "Hierarki dari seluruh widget dalam aplikasi": true,
    "Daftar widget yang berada dalam baris": false,
    "Pengelolaan data dalam aplikasi": false,
  }),
];
