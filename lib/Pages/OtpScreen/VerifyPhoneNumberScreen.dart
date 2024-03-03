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
  final _PhoneNumbercontroller = TextEditingController();

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
/*                   Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          child: TextField(
                            controller: CountryCode,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(width: 5),
                        Text("|",
                            style: TextStyle(fontSize: 40, color: Colors.grey)),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone Number"),
                            controller: _PhoneNumbercontroller,
                          ),
                        ),
                      ],
                    ),
                  ),
 */
                  IntlPhoneField(
                    focusNode: focusNode,
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
