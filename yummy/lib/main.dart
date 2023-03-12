import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yummy/pages/home_page.dart';
import 'package:yummy/pages/noodle_item_page.dart';
import 'package:yummy/pages/pizza_item_page.dart';
import 'package:yummy/pages/sandwich_item_page.dart';
import 'package:yummy/pages/burger_item_page.dart';
import 'package:yummy/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black87,
      ),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //themeMode: ThemeMode,
      color: Colors.black87,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        //"/": (context) => HomePage(),
        "burgerItemPage": (context) => BurgerItemPage(),
        "pizzaItemPage": (context) => PizzaItemPage(),
        "sandwichItemPage": (context) => SandwichItemPage(),
        "noodleItemPage": (context) => NoodleItemPage(),
      },
    );
  }
}
