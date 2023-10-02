import 'package:event_app/Home/widgets/Home_view_Body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_view extends StatelessWidget {
  const Home_view({super.key});
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Home_view_Body(),
    );
  }
}
