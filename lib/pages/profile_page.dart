import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true, // Judul di tengah
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, size: 80.0, color: Colors.white),
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Nama Pengguna Dummy',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'email.dummy@example.com',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Lokasi: Kota Dummy',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Bergabung sejak: Januari 2023',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
