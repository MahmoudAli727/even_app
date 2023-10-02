import 'package:event_app/Home/widgets/Categories.dart';
import 'package:event_app/Home/widgets/CustomAppBar.dart';
import 'package:event_app/Home/widgets/CustomTitle.dart';
import 'package:event_app/Home/widgets/EventsBuild.dart';
import 'package:event_app/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_view_Body extends StatelessWidget {
  const Home_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<App_State>(
      create: (_) => App_State(),
      child: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomTitle(),
              SizedBox(height: 20),
              Categpries(),
              SizedBox(height: 35),
              Events(),
            ],
          ),
        ),
      ),
    );
  }
}
