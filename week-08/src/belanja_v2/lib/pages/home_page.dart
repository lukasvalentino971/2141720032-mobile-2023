import 'package:belanja_v2/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja_v2/widgets/card.dart';
import 'package:belanja_v2/widgets/bottom_app_bar.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'ASUS ROG G513IC',
        price: 15900000,
        detail:
            'ASUS ROG STRIX G513IC GeForce RTX™ 3050 menjadi salah satu laptop gaming dari ASUS ROG yang paling murah.',
        imageUrl: 'assets/G513IC.jpg',
        stok: 5,
        rating: 4.6),
    Item(
        name: 'ASUS ROG Strix G17',
        price: 40599999,
        detail:
            'ASUS ROG Strix G17 G713RC bukanlah laptop yang seperti itu. Sebab kualitas visualnya mampu membuat Anda tenggelam masuk ke dalam gim.',
        imageUrl: 'assets/G17.jpg',
        stok: 5,
        rating: 5),
    Item(
        name: 'ASUS ROG Flow X13',
        price: 21999000,
        detail:
            'ASUS ROG Strix G17 G713RC bukanlah laptop yang seperti itu. Sebab kualitas visualnya mampu membuat Anda tenggelam masuk ke dalam gim.',
        imageUrl: 'assets/x13.jpg',
        stok: 5,
        rating: 4.5),
    Item(
        name: 'ASUS ROG FLOW Z13',
        price: 19500000,
        detail:
            'ASUS ROG Strix G17 G713RC bukanlah laptop yang seperti itu. Sebab kualitas visualnya mampu membuat Anda tenggelam masuk ke dalam gim.',
        imageUrl: 'assets/z13.jpg',
        stok: 10,
        rating: 4.7),
    Item(
        name: 'Asus ROG Strix G16',
        price: 5000000,
        detail:
            'ASUS ROG Strix G17 G713RC bukanlah laptop yang seperti itu. Sebab kualitas visualnya mampu membuat Anda tenggelam masuk ke dalam gim.',
        imageUrl: 'assets/G16.jpg',
        stok: 2,
        rating: 4.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LAPAK LAPTOP - ASUS'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Menampilkan 2 item per baris
            childAspectRatio: 0.7, // Mengatur rasio lebar-tinggi item
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return LukasCard(
                item: item,
                onTap: () =>
                    Navigator.pushNamed(context, '/item', arguments: item));
          },
        ),
        bottomNavigationBar: LukasBottomAppBar());
  }
}
