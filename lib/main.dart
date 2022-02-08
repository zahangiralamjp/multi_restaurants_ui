import 'package:flutter/material.dart';
import 'package:multi_restaurants_ui/details.dart';

import 'catagories.dart';
import 'home.dart';
import 'settings.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
    )),
    debugShowCheckedModeBanner: false,
    title: 'Multi Restaurants',
    home: HomePage(),
  ));
}
/// Multi Restaurant UI Home * Details * Settings * Catagories * BottomNavigationBar 
//// Multi Restaurants

