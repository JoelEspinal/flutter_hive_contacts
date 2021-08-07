import 'package:flutter/material.dart';
import 'package:flutter_hive_contacts/src/pages/main_menu.dart';

class BurgerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: MainMenu(),
      ),
    );
  }
}
