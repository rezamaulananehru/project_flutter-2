import 'package:flutter/material.dart';
import 'package:navigation/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  // Menerima item melalui konstruktor
  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: const Color.fromARGB(255, 13, 148, 220), // Warna AppBar
      ),
      body: Container(
        color: const Color.fromARGB(133, 3, 198, 237), // Latar belakang berwarna pink muda
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Price: ${item.price}',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
