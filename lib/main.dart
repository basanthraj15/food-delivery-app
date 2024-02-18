
import 'package:flutter/material.dart';
import 'package:food_delivery/Controller/user_controller.dart';
import 'package:food_delivery/Pages/MainScreens/HomePage.dart';
import 'package:food_delivery/Pages/MainScreens/Splashscreen.dart';
import 'package:food_delivery/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lottie/lottie.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter App',
      theme:  ThemeData(
        primarySwatch:  Colors.yellow,
        appBarTheme: AppBarTheme(
          color:  Color.fromRGBO(248, 198, 33, 1),
        ),
      ),
       home:UserController.user !=null? const HomePage() : const Splash(),
      debugShowCheckedModeBanner: false,     
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
void initState() {
    super.initState();
    // Delay the navigation by 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    });
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Lottie.asset('assets/splash.json'),
             const SizedBox(height:100),
            Container(child: Lottie.asset('assets/load_splash.json'),
            height: 70,
            width: 70,
            ),
            SizedBox(height: 100),
            Text('VERSION 1.0.0')
            
            
          ],

        ),
      ),
    );
  }
}
