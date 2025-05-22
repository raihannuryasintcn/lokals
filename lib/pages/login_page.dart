import 'package:flutter/material.dart';
import 'package:lokals/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Hapus AppBar di halaman login untuk kesan full-screen atau minimalis
      // appBar: AppBar(
      //   title: const Text('Lokals: Login'),
      //   centerTitle: true,
      // ),
      body: Center( // Tetap menggunakan Center untuk menengahkan form
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0), // Padding yang lebih besar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Agar elemen mengisi lebar
            children: <Widget>[
              // === Logo Aplikasi ===
              Image.asset(
                'assets/images/lokals.png', // Ganti dengan path file logomu
                height: 120.0, // Sesuaikan tinggi logo
                // width: 120.0, // Sesuaikan lebar logo jika perlu
              ),
              const SizedBox(height: 24.0), // Ruang antar logo dan judul

              // === Judul Halaman ===
              const Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 28.0, // Ukuran font lebih besar
                  fontWeight: FontWeight.bold,
                  // Warna akan diambil dari tema atau bisa diatur di sini
                  // color: Theme.of(context).primaryColor, // Opsional: gunakan warna primary
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Masuk untuk menjelajahi acara lokal',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600], // Warna teks sekunder
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0), // Ruang antar judul dan form

              // === Form Input (Username & Password) ===
              // Kamu bisa membungkus ini di Card untuk visual yang lebih baik
              Card( // Contoh pembungkus dengan Card
                elevation: 4.0, // Bayangan Card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Border radius Card
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email atau Username', // Label yang lebih umum
                          // Hapus OutlineInputBorder di sini jika sudah diatur di tema
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(8.0),
                          // ),
                          prefixIcon: Icon(Icons.person_outline), // Tambahkan ikon prefix
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          // Hapus OutlineInputBorder di sini jika sudah diatur di tema
                          prefixIcon: Icon(Icons.lock_outline), // Tambahkan ikon prefix
                          // suffixIcon: Icon(Icons.visibility_off), // Opsional: tambahkan ikon show/hide password
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24.0), // Ruang antar form dan tombol

              // === Tombol Login ===
              ElevatedButton(
                onPressed: () {
                  // Dummy Login Logic: Langsung navigasi ke HomePage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding vertikal saja
                  textStyle: const TextStyle(fontSize: 18.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border radius tombol
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              // === Tombol Daftar ===
              TextButton(
                onPressed: () {
                  // TODO: Implementasi navigasi ke halaman registrasi
                },
                child: const Text('Belum punya akun? Daftar di sini'),
              ),
              const SizedBox(height: 20.0),
              // Opsional: Teks "Lupa Password"
              // TextButton(
              //    onPressed: () {
              //      // TODO: Implementasi navigasi ke halaman lupa password
              //    },
              //    child: const Text('Lupa Password?'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
