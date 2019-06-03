import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        //Set State notifies Flutter of change
        addProduct('Upstate Passed Product');
      },
      child: Text('Add Product'),
    );
  }
}
