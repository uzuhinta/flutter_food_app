import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

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
          image: AssetImage("assets/mag1.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Stack(
        children: [
          Text(
            category,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Positioned(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            top: 20,
          ),
          Positioned(
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Text(
              chef,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            bottom: 10,
            right: 0,
          ),
        ],
      ),
    );
  }
}
