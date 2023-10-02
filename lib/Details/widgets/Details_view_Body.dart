// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, file_names

import 'package:event_app/Details/widgets/EventDetailsBackground.dart';
import 'package:event_app/Details/widgets/EventDetailsContent.dart';
import 'package:event_app/model/event.dart';
import 'package:flutter/cupertino.dart';

class Details_view_Body extends StatelessWidget {
  const Details_view_Body({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        EventDetailsBackground(event: event),
        EventDetailsContent(event: event),
      ],
    );
  }
}
