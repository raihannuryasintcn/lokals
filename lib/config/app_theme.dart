import 'package:flutter/material.dart';

// Definisikan palet warna kustom
const Color primaryColor = Color(0xFF2196F3); // Warna biru material default
const Color accentColor = Color(0xFF03A9F4); // Warna biru cerah material default
const Color secondaryColor = Color(0xFF4DD0E1); // Warna cyan material untuk aksen
const Color textColor = Colors.black87; // Warna teks default
const Color secondaryTextColor = Colors.black54; // Warna teks sekunder

// Definisikan Theme Data untuk aplikasi
ThemeData appThemeData = ThemeData(
  primaryColor: primaryColor,
  // Menggunakan colorScheme untuk skema warna yang lebih modern di Flutter 3+
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor, // Warna dasar untuk menghasilkan palet
    primary: primaryColor,
    secondary: secondaryColor,
    // Kamu bisa menyesuaikan warna lainnya di sini
    // brightness: Brightness.light, // Atau .dark
  ),
  // Definisi warna sekunder lama (untuk kompatibilitas mundur jika perlu)
  // accentColor: accentColor, // Properti lama, gunakan colorScheme.secondary

  scaffoldBackgroundColor: Colors.white, // Background default halaman

  // Konfigurasi AppBar
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor, // Warna AppBar
    foregroundColor: Colors.white, // Warna ikon dan judul di AppBar
    elevation: 4.0, // Efek bayangan AppBar
    titleTextStyle: TextStyle( // Gaya teks judul AppBar
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  ),

  // Konfigurasi Gaya Teks Global
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 96.0, fontWeight: FontWeight.w300, color: textColor),
    displayMedium: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w400, color: textColor),
    displaySmall: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w400, color: textColor),
    headlineMedium: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w400, color: textColor),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, color: textColor), // Contoh untuk Judul Halaman
    titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: textColor), // Contoh untuk Judul Widget/Card
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: textColor), // Gaya teks paragraf/body default
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: secondaryTextColor), // Gaya teks sekunder
    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white), // Gaya teks tombol default
  ),

  // Konfigurasi ElevatedButton
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, // Warna teks tombol
      backgroundColor: primaryColor, // Warna background tombol
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      // Menggunakan textTheme untuk gaya teks tombol
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    ),
  ),

  // Konfigurasi TextButton
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryColor, // Warna teks tombol
      // Menggunakan textTheme untuk gaya teks tombol
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
    ),
  ),

  // Konfigurasi Card
  cardTheme: CardTheme(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    color: Colors.white, // Warna background Card
  ),

  // Konfigurasi Input Field (TextField)
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey[400]!),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey[400]!),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: primaryColor, width: 2.0),
    ),
    labelStyle: TextStyle(
      color: Colors.grey[600],
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
  ),

  // Konfigurasi Drawer
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),

);
