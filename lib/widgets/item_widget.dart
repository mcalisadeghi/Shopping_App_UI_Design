// Import necessary packages
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(
                        0xFF4C53A5,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
