import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'LAPTOP 1', harga: '\Rp20.000.000'),
    Product(name: 'LAPTOP 2', harga: '\Rp15.000.000'),
    Product(name: 'LAPTOP 3', harga: '\Rp12.000.000'),
    Product(name: 'LAPTOP 4', harga: '\Rp10.900.000'),
    Product(name: 'LAPTOP 5', harga: '\Rp3000.000'),
    Product(name: 'Smart Phone 1', harga: '\Rp7.000.000'),
    Product(name: 'Smart Phone 2', harga: '\Rp10.000.000'),
    Product(name: 'Smart Phone 3', harga: '\Rp8.000.000'),
    Product(name: 'Smart Phone 4', harga: '\Rp9.900.000'),
    Product(name: 'Smart Phone 5', harga: '\Rp3000.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.deepPurple, // Ganti warna app bar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple,
              Colors.blue
            ], // Ganti warna latar belakang
          ),
        ),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                products[index].name,
                style: TextStyle(color: Colors.white), // Ganti warna teks
              ),
              subtitle: Text(
                'Harga: ${products[index].harga}',
                style: TextStyle(color: Colors.white), // Ganti warna teks
              ),
              // Ganti warna teks atau tambahkan dekorasi lain sesuai keinginan
            );
          },
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String harga;

  Product({required this.name, required this.harga});
}
