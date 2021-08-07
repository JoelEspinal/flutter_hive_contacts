import 'package:flutter/material.dart';
import 'package:flutter_hive_contacts/src/models/dish.dart';
import 'package:flutter_hive_contacts/src/widgets/dish_widget.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var recipes = Dish.getRecipes();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TASTYBURGER',
          style: Theme.of(context).textTheme.headline6?.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {
              print("favorite");
            },
          ),
        ],
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          ListView.builder(
              padding: EdgeInsets.only(bottom: 8.0),
              shrinkWrap: true,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return RecipeWdiget(recipe: recipes[index]);
              })
        ],
      ),
    );
  }
}
