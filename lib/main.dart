import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Map<String, WidgetBuilder> routes = {
    '/home': (context) => const Home_Page(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "student grouping system",
      theme: ThemeData(primaryColor: Colors.blue),
      home: const Home_Page(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
