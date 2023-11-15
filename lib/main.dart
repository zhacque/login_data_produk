import 'package:flutter/material.dart';
import 'package:login_data_produk/login.dart';
import 'package:login_data_produk/produk.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/produk': (context) => const Produk(),
      },
    );
  }
}
