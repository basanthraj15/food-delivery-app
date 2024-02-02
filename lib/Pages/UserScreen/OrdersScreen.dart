import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/MainScreens/HomePage.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        );
  }
}