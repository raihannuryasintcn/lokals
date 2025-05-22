import 'package:flutter/material.dart';
import 'package:lokals/pages/login_page.dart'; // Import LoginPage
import 'package:lokals/config/app_theme.dart'; // Import tema
import 'package:lokals/pages/login_page.dart';
// Tidak perlu import HomePage di main.dart lagi karena sudah diimpor di LoginPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokals: Acara Lokal',
      // Gunakan tema yang sudah didefinisikan
      theme: appThemeData, // Gunakan appThemeData
      // Hapus primarySwatch dan visualDensity jika menggunakan colorScheme
      // primarySwatch: Colors.blue,
      // visualDensity: VisualDensity.adaptivePlatformDensity,

      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
