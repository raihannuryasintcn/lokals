import 'package:flutter/material.dart';
import 'package:lokals/pages/home_page.dart';
import 'package:lokals/pages/profile_page.dart';
import 'package:lokals/pages/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40.0, color: Colors.blue),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Nama Pengguna',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Acara Lokal'),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              // Navigasi ke halaman utama, gunakan pushReplacement untuk menghindari duplikasi halaman
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profil'),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              // Navigasi ke halaman Profil
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          // Tambahkan item menu lainnya di sini
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              // Logika Logout dummy: kembali ke halaman login dan hapus stack navigasi sebelumnya
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
