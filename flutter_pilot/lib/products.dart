import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  @override
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpeg'),
          Text(products[index])
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    /*
      Column is not a great widgent to use
      when you know that your code is going
      to spill over.

      A suitable alternative to Column is ListView.

      ListView requires a unique container with
      specified height.

      It's expensive and inefficient  to create 
      ListView for large # of elements, and doesn't
      make sense when you aren't even gonna display
      all of the content at one point of time.

      A suitable specification is ListView.builder
    */
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
