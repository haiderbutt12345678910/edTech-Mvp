import 'package:flutter/material.dart';
import 'package:flutter_application_assignmnetapp/presentation/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.green,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * .06,
                  fontWeight: FontWeight.bold))),
      home: const HomwScreen(),
    );
  }
}
