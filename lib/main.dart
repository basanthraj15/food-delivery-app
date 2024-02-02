import 'package:flutter/material.dart';
import 'package:food_delivery/Controller/user_controller.dart';
import 'package:food_delivery/Pages/MainScreens/HomePage.dart';
import 'package:food_delivery/Pages/MainScreens/Splashscreen.dart';
import 'package:food_delivery/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
       home:UserController.user !=null? const HomePage() : const SplashScreen(),
      debugShowCheckedModeBanner: false,     
    );
  }
}
