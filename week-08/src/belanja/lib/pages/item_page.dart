import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Card(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemArgs.name.toString(),
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 8), // Spasi antara "name" dan "with"
                const Text(
                  'with',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(width: 8), // Spasi antara "with" dan "price"
                Text(
                  itemArgs.price.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
