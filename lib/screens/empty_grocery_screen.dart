import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset("assets/fooderlich_assets/empty_list.png"),
            ),
          ),
          const Text(
            "No Groceries",
            style: TextStyle(
              fontSize: 21.0,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Shopping for ingredients?\n'
            'Tap the + button to write them down!',
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            onPressed: () {
              Provider.of<AppStateManager>(context, listen: false)
                  .goToRecipes();
            },
            textColor: Colors.white,
            color: Colors.green,
            child: const Text("Browse Recipes"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          )
        ],
      ),
    );
  }
}
