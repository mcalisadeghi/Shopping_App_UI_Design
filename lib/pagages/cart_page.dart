// Import necessary packages
import 'package:flutter/material.dart';
// Import custom widgets and classes
import 'package:flutter_application_1/pagages/cart_app_bar.dart';
import 'package:flutter_application_1/widgets/cart_item_samples.dart';
import 'package:flutter_application_1/widgets/cardbottomnav.dart';

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
          // Display the CartAppBar widget at the top of the page.
          const CartAppBar(),
          Container(
            // Set the container's height.
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
            child: Column(
              children: <Widget>[
                // Display the CartItemSamples widget.
                const CartItemSamples(),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  padding: const EdgeInsets.all(
                    10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFF4C53A5,
                          ),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        // Display the text 'Add coupon code'.
                        child: Text(
                          'Add coupn code',
                          style: TextStyle(
                            color: Color(
                              0xFF4C53A5,
                            ),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // Display the CardBottomNav widget at the bottom of the page.
      bottomNavigationBar: const CardBottomNav(),
    );
  }
}
