import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Contoh dataResep dengan beberapa data fiktif
    var dataResep = [
      {'name': 'Resep 1', 'harga': 'Rp 20.000', 'image': 'assets/image1.jpg'},
      {'name': 'Resep 2', 'harga': 'Rp 25.000', 'image': 'assets/image2.jpg'},
      {'name': 'Resep 3', 'harga': 'Rp 30.000', 'image': 'assets/image3.jpg'},
      // Tambahkan data lainnya sesuai kebutuhan
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: dataResep.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Tindakan saat item di klik
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    reseps: dataResep[index], // Kirim data ke detail screen
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        dataResep[index]
                            ['image']!, // Pastikan path gambar benar
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dataResep[index]['name']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      Text('Harga : ${dataResep[index]['harga']}'),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Map reseps;

  const DetailScreen({super.key, required this.reseps});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(reseps['name'])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(reseps['image']),
            Text(reseps['name']),
            Text(reseps['harga']),
          ],
        ),
      ),
    );
  }
}
