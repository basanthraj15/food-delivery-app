import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool _isSecurePassword = true;
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  late Box box1;

  @override
  void initState(){
    super.initState();
    createBox();
  }
  void createBox()async{
    box1 = await Hive.openBox('logindata');
  }
  void getdata()async{
    if(box1.get(_emailcontroller)!=null){

    }
    if(box1.get(_passwordcontroller)!=null){
      
    }
  }

  void validateEmail() {
    final bool isValid = EmailValidator.validate(_emailcontroller.text.trim());
    if (isValid) {
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please Enter a Valid Email and Password")));
    }
  }



  final formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*  child:Form(
          key: formKey, */
          Image.asset(
            'assets/login2.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            opacity: const AlwaysStoppedAnimation(2),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 110, left: 30),
            child: Text(
              'Hola!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 180,bottom: 20),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.grey.withOpacity(.4),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 30),
                      child: TextFormField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Email",
                            fillColor: Colors.white),
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
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 15),
                      child: TextField(
                        obscureText: _isSecurePassword,
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
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
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                            login();
                         
                         /*  {
                            if(formKey.currentState!.validate()){
                              final SnackBar = SnackBar(content: Text("Please wait"));
                              _scaffoldkey.currentState!.showSnackBar(SnackBar);
                            }                           
                          }
                              */ 

                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          minimumSize: Size(350, 58),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [                        
                          
                        Text('Remember me',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Checkbox(
                                  value:isChecked,
                                  activeColor:Colors.red,
                                onChanged:(value){
                                  isChecked = !isChecked;
                                  setState(() {
                                    
                                  });
                                },
                                      
                          )                                           
                      ],
                ),
                  
                    
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'OR',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Container(
                        height: 45,
                        width: 320,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset(
                                  'assets/google.png',
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
                                            const HomeScreen()),
                                  ); */
                                },
                                child: Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 83, 76, 76),
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Container(
                        height: 45,
                        width: 320,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset(
                                  'assets/phone.png',
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
                                            const HomeScreen()),
                                  ); */
                                },
                                child: Text(
                                  'Continue with Phone',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 83, 76, 76),
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 60),
                          Text(
                            "Don't have an account yet?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()),
                              ); */
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),                   
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
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
  void login(){
    if(isChecked){
      box1.put('_emailcontroller', _emailcontroller.text);
      box1.put('_passwordcontroller', _passwordcontroller.text);
    }
  }
}