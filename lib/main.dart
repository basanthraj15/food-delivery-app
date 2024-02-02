import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/MainScreens/Splashscreen.dart';

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
        primarySwatch:  Colors.yellow,
        appBarTheme: AppBarTheme(
          color:  Color.fromRGBO(248, 198, 33, 1),
        ),
      ),
       home:SplashScreen(),
      debugShowCheckedModeBanner: false,     
    );
  }
}
