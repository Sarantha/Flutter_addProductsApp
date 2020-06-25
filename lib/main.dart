import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['food tester'];

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
          body: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                },
                child: Text('Add Products'),
              ),
              Column(
                children: _products
                    .map((e) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpg'),
                              Text(e)
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          )),
    );
  }
}
