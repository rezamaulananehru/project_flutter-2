import 'package:flutter/material.dart';
import 'package:navigation/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 3000),
    Item(name: 'Indomie', price: 2500),
    Item(name: 'Shampoo', price: 10000),
    Item(name: 'Kecap', price: 500),
    Item(name: 'Jajan', price: 1000),
    Item(name: 'Beras', price: 10000),
    Item(name: 'Teh', price: 7000),
    Item(name: 'Kopi', price: 15000),
    Item(name: 'Minyak Goreng', price: 12000),
    Item(name: 'Deterjen', price: 8000),
    Item(name: 'Sabun', price: 5000),
    Item(name: 'Tepung', price: 4000),
    Item(name: 'Saus', price: 6000),
    Item(name: 'Snack', price: 3000),
    Item(name: 'Madu', price: 25000),
    Item(name: 'Kacang', price: 20000),
    Item(name: 'Cokelat', price: 15000),
    Item(name: 'Kue', price: 12000),
    Item(name: 'Biskuit', price: 5000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.pink, // Ubah warna AppBar menjadi pink
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        color: Colors.pink[100], // Ubah warna latar belakang kontainer menjadi pink muda
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item, // Kirim item yang dipilih
                );
              },
              child: Card(
                color: const Color.fromARGB(255, 255, 255, 255), // Warna latar belakang Card tetap putih
                elevation: 4, // Tambahkan bayangan pada Card
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
