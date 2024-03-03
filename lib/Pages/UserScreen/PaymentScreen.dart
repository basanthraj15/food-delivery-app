import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/UserScreen/PaymentoptionScreen.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var _razorpay = Razorpay();
 final amountcontroller = TextEditingController();
 TextEditingController textEditingController = new TextEditingController();


  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("payment success");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("payment Failed");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }


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
          MaterialPageRoute(builder: (context) => PaymentOptionScreen()),
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
          backgroundColor: Color.fromRGBO(248, 198, 33, 1),
          elevation: 0,
          leading: IconButton(
            onPressed: () async {
              showAlertDialog(
                  context,
                  'Are you sure you want to cancel payment?',
                  "Foodiiee",
                  "Ok",
                  "Cancel");
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
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
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: amountcontroller,
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
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  var options = {
                    'key': "rzp_test_qk1dk4sV8VdXcP",

                    'amount': num.parse(amountcontroller.text) *100, //ammount will be multiple of 100 ie 100=10000
                    'name': 'Foodiee',
                    'order_id': 'order_EMBFqjDHEEn80l',
                    'description': 'Food Delivery',
                    'timeout': 240, // in seconds
                    'prefill': {
                      'contact': '9000000000',
                      'email': 'foodie@examplemail.com'
                    }
                  };
                  _razorpay.open(options);
                },
                child: Text("Make Payment"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(280, 45),
                  backgroundColor: Color.fromRGBO(248, 198, 33, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        )));
  }

  @override
  void dispose() {
    _razorpay.clear(); // Removes all listeners
    super.dispose();
  }
}
