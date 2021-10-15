import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  final String category = "Editor's Choise";
  final String title = "The Art Of Dough";
  final String description = "Learn to make the perfect food";
  final String chef = "Ba Quan";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(
        width: double.infinity,
        height: double.infinity,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/mag2.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Recipe Trends',
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                const SizedBox(height: 30),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    children: [
                      Chip(
                        label: Text(
                          "Heathy",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print("delete");
                        },
                      ),
                      Chip(
                        label: Text(
                          "Vegan",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print("delete");
                        },
                      ),
                      Chip(
                        label: Text(
                          "Carrots",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print("delete");
                        },
                      ),
                      Chip(
                        label: Text(
                          "Heathy",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print("delete");
                        },
                      ),
                    ],
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
