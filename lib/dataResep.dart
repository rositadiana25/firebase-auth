import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map reseps;

  const DetailScreen({super.key, required this.reseps});

  @override
  Widget build(BuildContext context) {
    // Menambahkan print untuk memeriksa nilai yang diterima
    print('Resep yang diterima: ${reseps['name']}, Harga: ${reseps['harga']}');

    return Scaffold(
      appBar: AppBar(title: Text(reseps['name'])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan gambar
            Image.asset(reseps['image']),
            // Menampilkan nama resep
            Text(
              reseps['name'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Menampilkan harga
            Text(
              'Harga: ${reseps['harga']}',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
