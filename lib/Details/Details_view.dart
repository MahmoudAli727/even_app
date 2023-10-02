import 'package:event_app/Details/widgets/Details_view_Body.dart';
import 'package:event_app/model/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details_view extends StatelessWidget {
  const Details_view({super.key});
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Event;
    return Scaffold(
      body: Details_view_Body(event: data),
    );
  }
}
