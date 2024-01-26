import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePage.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 45,
          width: 300,
          color: Colors.red,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Image.asset(
                    'assets/lock.png',
                    height: 20,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () async {
                    /* Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const VerifyNumber()),
                                  ); */
                  },
                  child: Text(
                    'Make Payment',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
