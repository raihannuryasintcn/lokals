import 'package:flutter/material.dart';
import 'package:lokals/models/acara.dart';
import 'package:lokals/widgets/custom_drawer.dart';
import 'package:lokals/pages/acara_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Acara> daftarAcara = [
    Acara(
      nama: 'Bazar Kuliner Lokal',
      tanggal: '15 Oktober 2023',
      lokasi: 'Lapangan Merdeka',
      deskripsi: 'Nikmati beragam hidangan lezat dari UMKM lokal.',
      imageUrl: 'assets/images/kuliner.png', // Ukuran placeholder yang sedikit berbeda
    ),
    Acara(
      nama: 'Pertunjukan Seni Budaya',
      tanggal: '20 Oktober 2023',
      lokasi: 'Gedung Kesenian',
      deskripsi: 'Saksikan tarian dan musik tradisional dari berbagai daerah.',
      imageUrl: 'assets/images/senbud.png',
    ),
    Acara(
      nama: 'Workshop Kerajinan Tangan',
      tanggal: '25 Oktober 2023',
      lokasi: 'Pusat Komunitas',
      deskripsi: 'Pelajari cara membuat kerajinan unik dari bahan daur ulang.',
      imageUrl: 'assets/images/workshop.png',
    ),
    Acara(
      nama: 'Pertandingan Olahraga Lokal',
      tanggal: '30 Oktober 2023',
      lokasi: 'GOR Kota',
      deskripsi: 'Dukung tim favoritmu dalam pertandingan seru.',
      imageUrl: 'assets/images/olahraga.png',
    ),
    Acara(
      nama: 'Festival Musik Indie',
      tanggal: '05 November 2023',
      lokasi: 'Taman Kota',
      deskripsi: 'Nikmati penampilan band-band indie lokal berbakat.',
      imageUrl: 'assets/images/indie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Ganti title dengan widget untuk logo
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Tengah kan Row
          mainAxisSize: MainAxisSize.min, // Biarkan Row menempati ukuran minimalnya
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              // Menggunakan placeholder gambar sebagai contoh logo
              // GANTI dengan Image.asset('assets/images/your_logo.png') jika menggunakan aset lokal
              child: Image.asset(
                'assets/images/lokals.png', // Placeholder URL
                height: 40.0, // Sesuaikan tinggi logo
                errorBuilder: (context, error, stackTrace) {
                  // Tampilkan teks atau ikon jika logo tidak bisa dimuat
                  return Text('Lokals', style: Theme.of(context).appBarTheme.titleTextStyle);
                },
              ),
            ),
          ],
        ),
        centerTitle: true, // Tengah kan konten di dalam AppBar (logo)
        // Jika menggunakan ikon hamburger default untuk drawer, pastikan leading tidak di-override
        // Jika kamu ingin mengontrol leading secara manual, kamu bisa tambahkan:
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     icon: const Icon(Icons.menu),
        //     onPressed: () => Scaffold.of(context).openDrawer(),
        //   ),
        // ),
      ),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: daftarAcara.length,
        itemBuilder: (context, index) {
          final acara = daftarAcara[index];
          // Card properties sudah didefinisikan di app_theme.dart
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AcaraDetailPage(acara: acara),
                  ),
                );
              },
              // Padding di dalam Card
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gambar Acara
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        acara.imageUrl,
                        height: 180.0, // Tinggi gambar sedikit ditingkatkan
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 180.0,
                            color: Colors.grey[300],
                            child: Center(
                              child: Icon(Icons.image_not_supported, size: 50.0, color: Colors.grey[600]),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    // Nama Acara
                    Text(
                      acara.nama,
                      // Menggunakan gaya teks dari tema jika sesuai, atau kustom
                      // Contoh: menggunakan titleLarge dari tema
                      style: Theme.of(context).textTheme.titleLarge,
                      // sebelumnya: const TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold, ),
                    ),
                    const SizedBox(height: 4.0),
                    // Tanggal
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16.0, color: Theme.of(context).textTheme.bodyMedium?.color), // Gunakan warna teks sekunder tema
                        const SizedBox(width: 8.0),
                        Text(
                          acara.tanggal,
                          // Menggunakan gaya teks sekunder dari tema
                          style: Theme.of(context).textTheme.bodyMedium,
                          // sebelumnya: TextStyle( fontSize: 14.0, color: Colors.grey[600], ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    // Lokasi
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16.0, color: Theme.of(context).textTheme.bodyMedium?.color), // Gunakan warna teks sekunder tema
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Text(
                            acara.lokasi,
                            // Menggunakan gaya teks sekunder dari tema
                            style: Theme.of(context).textTheme.bodyMedium,
                            // sebelumnya: TextStyle( fontSize: 14.0, color: Colors.grey[600], ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    // Deskripsi
                    Text(
                      acara.deskripsi,
                      // Menggunakan gaya teks body default dari tema
                      style: Theme.of(context).textTheme.bodyLarge,
                      // sebelumnya: const TextStyle(fontSize: 16.0),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
