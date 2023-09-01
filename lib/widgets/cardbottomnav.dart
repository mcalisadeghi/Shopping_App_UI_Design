import 'package:flutter/material.dart';

class CardBottomNav extends StatefulWidget {
  const CardBottomNav({super.key});

  @override
  State<CardBottomNav> createState() => _CardBottomNavState();
}

class _CardBottomNavState extends State<CardBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20, //20
          // vertical: 5, //15
        ),
        // height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'total:',
                  style: TextStyle(
                    color: Color(
                      0xFF4C53A5,
                    ),
                    fontSize: 18, //22
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$250',
                  style: TextStyle(
                    color: Color(
                      0xFF4C53A5,
                    ),
                    fontSize: 20, //25
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 25,
              // width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF4C53A5,
                ),
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: const Text(
                'chek out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
