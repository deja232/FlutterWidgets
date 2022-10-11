import 'package:flutter/material.dart';
import 'package:flutter_widgets1/buyweapons.dart';
import 'package:flutter_widgets1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: "/",
      routes: {
        Buyweapons.routeName: (context) => Buyweapons(),
      },
    );
  }
}
