import 'package:flutter/material.dart';
import 'package:flutter_application_1/screan/appbar.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     body: Column(
      //   children: [
      //     Container(child: Text('ddd')),
      //   ],
      // )
      body: ListView(
        children: const <Widget>[
          HomePageAppBar(),
        ],
      ),
    );
  }
}
