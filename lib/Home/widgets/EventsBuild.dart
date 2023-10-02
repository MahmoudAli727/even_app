// ignore_for_file: non_constant_identifier_names

import 'package:event_app/Details/Details_view.dart';
import 'package:event_app/Style.dart';
import 'package:event_app/app_state.dart';
import 'package:event_app/model/category.dart';
import 'package:event_app/model/event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Events extends StatelessWidget {
  const Events({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<App_State>(
      builder: (context, AppState, _) {
        var INDEX =
            events.where((e) => e.categoryIds.contains(AppState.itemSelected));
        return SizedBox(
          height: INDEX.length * 300,
          child: Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: INDEX.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Details_view.routeName,
                            arguments: INDEX.toList()[index]);
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 20, right: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  INDEX.toList()[index].imagePath,
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 300,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          INDEX.toList()[index].title,
                                          style: eventTitleTextStyle,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(categories[2].icon),
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              " ${INDEX.toList()[index].location}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: eventLocationTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    INDEX
                                        .toList()[index]
                                        .duration
                                        .toUpperCase(),
                                    style: eventLocationTextStyle.copyWith(
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
