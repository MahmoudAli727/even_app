import 'package:event_app/Style.dart';
import 'package:flutter/cupertino.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        "What's Up",
        style: whiteHeadingTextStyle,
      ),
    );
  }
}
