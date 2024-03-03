import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/MainScreens/LoginScreen.dart';

import 'package:food_delivery/Pages/OtpScreen/VerifyPhoneNumberScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();

  bool _isNotValidate = false;
  bool isChecked = false;
  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Spacer(),
              Text(
                "Before we Get Started \n Please fill your details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 40),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: "Enter your Name",
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailcontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.grey),
                  errorText: _isNotValidate ? "Enter a valid email id" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: "Email",
                  fillColor: Colors.white,
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^ [\W-\.]+@([\W-]+\.)+[\w-]{2,4}')
                          .hasMatch(value)) {
                    return "Enter Email id";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: _isSecurePassword,
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.grey),
                  errorText: _isNotValidate ? "Enter correct Password" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: "Password",
                  fillColor: Colors.white,
                  suffixIcon: togglePassword(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: _isSecurePassword,
                controller: _confirmpasswordcontroller,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.grey),
                  errorText: _isNotValidate ? "Enter correct Password" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: "Re-enter the same Password",
                  fillColor: Colors.white,
                  suffixIcon: togglePassword(),
                ),
                /* validator: (val){
                              if(val.isEmpty)
                                   return 'Empty';
                              if(val != _passwordcontroller.text)
                                   return 'Password not same';
                              return null;
                              } */
              ),
              SizedBox(height: 10),
              SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyNumber()),
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
