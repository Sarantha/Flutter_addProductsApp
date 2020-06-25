import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: Text('EasyList'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}
