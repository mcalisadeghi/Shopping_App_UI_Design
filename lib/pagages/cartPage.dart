// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagages/CartAppBar.dart';
import 'package:flutter_application_1/widgets/CartItemSamples.dart';

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
        children: <Widget>[
          const CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(
              top: 15,
            ),
            decoration: const BoxDecoration(
              color: Color(
                0xFFEDECF2,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  35,
                ),
                topRight: Radius.circular(
                  35,
                ),
              ),
            ),
            child: const Column(
              children: <Widget>[
                CartItemSamples(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
