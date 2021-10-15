import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';

import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String category = "Editor's Choise";
  final String title = "The Art Of Dough";
  final String description = "Learn to make the perfect food";
  final String chef = "Ba Quan";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(
        width: double.infinity,
        height: double.infinity,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/mag5.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          const AuthorCard(
            authorName: "Nguyen Ba Quan",
            title: "Developer",
            imageProvider: AssetImage("assets/author_katz.jpeg"),
          ),
          // 1
          Expanded(
            // 2
            child: Stack(
              children: [
                // 3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
                // 4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Smoothies',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
