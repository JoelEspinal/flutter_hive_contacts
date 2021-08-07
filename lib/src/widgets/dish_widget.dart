import 'package:flutter/material.dart';
import 'package:flutter_hive_contacts/src/models/recipe.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RecipeWdiget extends StatefulWidget {
  late final Recipe recipe;
  late ListView _recipeWdigets;

  RecipeWdiget({required this.recipe}) {
    _recipeWdigets = ListView.builder(
      shrinkWrap: true,
      itemCount: recipe.ingredients.length,
      itemBuilder: (context, index) {
        return Text('* ${recipe.ingredients[index]}',
            style: Theme.of(context).textTheme.headline5);
      },
    );
  }
  @override
  _RecipeWdigetState createState() => _RecipeWdigetState();
}

class _RecipeWdigetState extends State<RecipeWdiget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 100.0,
        height: 150.0,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                widget.recipe.imagePath,
              ),
            ),
            Positioned(
              child: Container(
                child: Text(
                  '\$4.5',
                  textAlign: TextAlign.center,
                ),
                color: Colors.green,
              ),
              width: 50.0,
              height: 20,
            ),
          ],
        ),
      ),
      title: Text(
        widget.recipe.comercialName,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Column(
        children: [widget._recipeWdigets],
      ),
      onTap: () => showRecipeDialog(),
      onLongPress: () {
        Fluttertoast.showToast(
            msg: "Save as favorite",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      },
    );
  }

  void showRecipeDialog() {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 10,
                height: MediaQuery.of(context).size.height - 80,
                color: Colors.white,
                child: Column(
                  children: [
                    AppBar(
                      title: Text('Recipe'),
                    ),
                    widget._recipeWdigets,
                  ],
                )),
          );
        });
  }
}
