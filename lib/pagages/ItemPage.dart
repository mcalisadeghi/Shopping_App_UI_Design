import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ItemAppbar.dart';

class ItemPages extends StatefulWidget {
  const ItemPages({super.key});

  @override
  State<ItemPages> createState() => _ItemPagesState();
}

class _ItemPagesState extends State<ItemPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFEDECF2,
      ),
      body: ListView(
        children: const <Widget>[
          ItemAppbar(),
        ],
      ),
    );
  }
}
