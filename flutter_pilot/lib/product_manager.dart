import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProducts;

  ProductManager({this.startingProducts = 'Default Product'});
  /*
   {} in argument makes it a 'named' argument.
   ie, one needs to name the argument when passing
   a value to it. The normal way works as well.

   The = 'value' is a default value for a named argument.
   the value is used when there is no value passed to the
   argument externally.
  */
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProducts);

    // ** init runs before build runs **

    // widget. is a special reference to parent stateclass that can
    // only be accessed from methods.
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(_addProduct),
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
