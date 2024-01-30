import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/SplashScreen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter App',
      theme:  ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          color:  Colors.yellow,
        ),
      ),
       home:SplashScreen(),
      debugShowCheckedModeBanner: false,     
    );
  }
}
