import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePage.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: 300,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
            },
            child: Text("Make Payment"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(280, 45),
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
