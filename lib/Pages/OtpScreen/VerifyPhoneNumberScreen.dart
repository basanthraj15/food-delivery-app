import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:food_delivery/Pages/MainScreens/LoginScreen.dart';
import 'package:food_delivery/Pages/OtpScreen/OtpScreen.dart';

/* import 'package:pinput/pinput.dart'; */

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({super.key});

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  TextEditingController _PhoneNumbercontroller = TextEditingController();

  TextEditingController CountryCode = TextEditingController();

  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    CountryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/otp.png', width: 150, height: 150),
                  SizedBox(height: 25),
                  Text(
                    "Phone Verification",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We need to register your Phone Number before getting started !",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  IntlPhoneField(
                    focusNode: focusNode,
                    controller: _PhoneNumbercontroller,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    languageCode: "en",
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        var _PhoneNumber = _PhoneNumbercontroller.text;
                        print("PhoneNumber:" + _PhoneNumber);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        );
                      },
                      child: Text(
                        'Send the code',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color.fromRGBO(248, 198, 33, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
