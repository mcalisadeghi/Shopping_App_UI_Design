// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagages/CartAppBar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CartAppBar(),
        ],
      ),
    );
  }
}
