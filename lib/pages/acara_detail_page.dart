import 'package:flutter/material.dart';
import 'package:lokals/models/acara.dart'; // Import model Acara

class AcaraDetailPage extends StatelessWidget {
  // Objek Acara yang akan ditampilkan detailnya
  final Acara acara;

  const AcaraDetailPage({Key? key, required this.acara}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(acara.nama), // Judul AppBar sesuai nama acara
        centerTitle: true,
      ),
      body: SingleChildScrollView( // Agar konten bisa discroll
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Elemen rata kiri
          children: <Widget>[
            // Gambar Acara (Full width)
            Image.asset(
              acara.imageUrl,
              width: double.infinity,
              height: 250.0, // Tinggi gambar yang lebih besar
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 250.0,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(Icons.image_not_supported, size: 50.0, color: Colors.grey[600]),
                  ),
                );
              },
            ),
            // Detail Acara
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Nama Acara
                  Text(
                    acara.nama,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Tanggal
                  Row( // Menggunakan Row untuk ikon dan teks tanggal
                    children: [
                      Icon(Icons.calendar_today, size: 18.0, color: Colors.grey[700]),
                      const SizedBox(width: 8.0),
                      Text(
                        acara.tanggal,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  // Lokasi
                  Row( // Menggunakan Row untuk ikon dan teks lokasi
                    children: [
                      Icon(Icons.location_on, size: 18.0, color: Colors.grey[700]),
                      const SizedBox(width: 8.0),
                      Expanded( // Menggunakan Expanded agar teks lokasi bisa wrap
                        child: Text(
                          acara.lokasi,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[700],
                          ),
                          softWrap: true, // Mengizinkan wrapping teks
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Deskripsi
                  Text(
                    'Deskripsi:',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    acara.deskripsi,
                    style: const TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify, // Teks rata kiri-kanan
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
