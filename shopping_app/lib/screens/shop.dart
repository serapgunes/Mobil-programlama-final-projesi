import 'package:flutter/material.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alışveriş Sepeti'),
        ),
        body: ShoppingCart(),
      );    
  }
}

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sepetiniz Boş',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Icon(
            Icons.shopping_cart,
            size: 100,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}