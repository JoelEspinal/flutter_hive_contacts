import 'package:flutter_hive_contacts/src/models/recipe.dart';

class Dish {
  Dish();

  static List<Recipe> getRecipes() {
    return [
      Recipe(
          "Chesee",
          "Chesee Burger",
          "https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg",
          ["Bread", "Extra Chessee"]),
      Recipe(
          "Beef",
          "Beef Burger",
          "https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg",
          ["Bread", "Extra Beef"]),
    ];
  }
}
