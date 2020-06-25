import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(String product){
    setState(() {
              _products.add(product);
            });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: ProductControl(_addProducts),
        ),
        Products(_products)
      ],
    );
  }
}