import 'package:event_app/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          const Text(
            "LOCAL EVENTS",
            style: fadedTextStyle,
          ),
          const Spacer(),
          Icon(
            Icons.person_outline,
            color: fadedTextStyle.color,
            size: 30,
          )
        ],
      ),
    );
  }
}
