// ignore_for_file: non_constant_identifier_names

import 'package:event_app/Style.dart';
import 'package:event_app/app_state.dart';
import 'package:event_app/model/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Categpries extends StatelessWidget {
  const Categpries({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<App_State>(
      builder: (context, appstate, _) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.156,
        child: Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoriesItem(index, context);
            },
          ),
        ),
      ),
    );
  }

  Padding CategoriesItem(int index, BuildContext context) {
    var AppState = Provider.of<App_State>(context);
    var IsSelected = AppState.itemSelected == categories[index].categoryId;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          if (!IsSelected) {
            AppState.itemSelectedChangeNotifier(categories[index].categoryId);
          }
        },
        child: Container(
          // width: 90,
          width: MediaQuery.of(context).size.width * 0.25,
          // height: 80,
          decoration: BoxDecoration(
            color: IsSelected ? Colors.white : Theme.of(context).primaryColor,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                categories[index].icon,
                color:
                    !IsSelected ? Colors.white : Theme.of(context).primaryColor,
                size: 45,
              ),
              const SizedBox(height: 10),
              Text(
                categories[index].name,
                style:
                    IsSelected ? selectedCategoryTextStyle : categoryTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
