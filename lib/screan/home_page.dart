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
        children: <Widget>[
          const HomePageAppBar(),
          Container(
            height: 500,
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
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                        ),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(
                          0xFF4C53A5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xFF4C53A5,
                      ),
                    ),
                  ),
                ),
                //categories
              ],
            ),
          ),
        ],
      ),
    );
  }
}
