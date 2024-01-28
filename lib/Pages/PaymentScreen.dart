import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePage.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({super.key});
  final _amountcontroller = TextEditingController();

  showAlertDialog(BuildContext context, String message, String heading,
      String buttonAcceptTitle, String buttonCancelTitle) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(buttonCancelTitle),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text(buttonAcceptTitle),
      onPressed: () {
        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );

      },
    );

    
    AlertDialog alert = AlertDialog(
      title: Text(heading),
      content: Text(message),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          onPressed: () async {
            showAlertDialog(context, 'Are you sure you want to cancel payment?', "Foodiiee" , "Ok", "Cancel");
          },
         
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
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
