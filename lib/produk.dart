import 'package:flutter/material.dart';

class Data {
  late String nama;
  late String harga;
  Data({required this.nama, required this.harga});
}

class Produk extends StatefulWidget {
  const Produk({Key? key}) : super(key: key);

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  final List<Data> _data = [
    Data(nama: 'Kaos', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos S', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos M', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos L', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos XL', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos XLL', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos XXL', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos XXXL', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos XXXXLL', harga: 'Rp. 50.000'),
    Data(nama: 'Kaos XXXXXL', harga: 'Rp. 50.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produk'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_data[index].nama),
              subtitle: Text(_data[index].harga),
            ),
          );
        },
      ),
    );
  }
}
