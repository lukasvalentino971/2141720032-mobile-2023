import 'package:belanja_v2/models/item.dart';
import 'package:flutter/material.dart';

class LukasCard extends StatelessWidget {
  void Function() onTap;
  final Item item;
  LukasCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(
              8), // Tambahkan padding pada keseluruhan Card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'productImage${item.name}',
                child: AspectRatio(
                  aspectRatio:
                      1, // Rasio lebar-tinggi 1:1 untuk ukuran yang sama
                  child: Image.asset(item.imageUrl, fit: BoxFit.fitWidth),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Agar rating berada di sebelah kanan
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8), // Padding di atas teks "name"
                    child: Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      Text(
                        item.rating.toString(),
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Rp. ${item.price}',
                  style: const TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 14,
                  ),
                ),
              ),
              Text(
                'Stok: ${item.stok}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
