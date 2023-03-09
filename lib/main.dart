import 'package:flutter/material.dart'; 
import 'package:menyou/screens/home/home.dart';
import 'package:menyou/screens/home/profile.dart';
import 'package:menyou/screens/home/singledish.dart';
import 'package:menyou/screens/langingpage';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, WidgetBuilder> routes = {
      '/home': (BuildContext context) => HomePage(),
      '/menu': (BuildContext context) => LandingPage(),
      '/profile': (BuildContext context) => ProfilePage(),
      '/cart': (BuildContext context) => FoodDetailPage(),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menyou',
      initialRoute: '/home',
      routes: routes,
    );
  }
}