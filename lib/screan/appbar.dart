import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomePageAppBar extends StatefulWidget {
  const HomePageAppBar({super.key});

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(
        25,
      ),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(
              0xFF4C53A5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'DP shop',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(
                  0xFF4C53A5,
                ),
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: const BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(
                7,
              ),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(
                  0xFF4C53A5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}