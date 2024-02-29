import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/UserScreen/PaymentScreen.dart';

class PaymentOptionScreen extends StatefulWidget {
  const PaymentOptionScreen({super.key});

  @override
  State<PaymentOptionScreen> createState() => _PaymentOptionScreen();
}

class _PaymentOptionScreen extends State<PaymentOptionScreen> {
   String _selectedPaymentMethod = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentScreen()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              "Select a payment method",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            ListTile(
              title: Text("Cash on delivery"),
              leading: Radio(
                  value: 'Cash on Delivery',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
               
              },
            ),
          ),
          ListTile(
            title: Text('Pay Online'),
            leading: Radio(
              value: 'Pay Online',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentScreen()),
            );
              },
            ),
          ),
          SizedBox(height: 20),
           
          ],
        ),
      ),
    );
  }
}
