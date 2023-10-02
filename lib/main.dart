import 'package:event_app/Details/Details_view.dart';
import 'package:event_app/Home/Home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        primaryColor: const Color(0xFFFF4700),
      ),
      initialRoute: Home_view.routeName,
      routes: {
        Home_view.routeName: (context) => const Home_view(),
        Details_view.routeName: (context) => const Details_view(),
      },
    );
  }
}
