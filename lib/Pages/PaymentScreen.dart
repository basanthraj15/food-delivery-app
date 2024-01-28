import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePage.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({super.key});
  final _amountcontroller = TextEditingController();

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
          Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 15),
                      child: TextField(
                        
                            keyboardType: TextInputType.number,
                          
                        controller: _amountcontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Enter Amount",
                          fillColor: Colors.white,
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
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
