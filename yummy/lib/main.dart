import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yummy/pages/home_page.dart';
import 'package:yummy/pages/signup_latest_page.dart';
import 'package:yummy/pages/noodle_item_page.dart';
import 'package:yummy/pages/pizza_item_page.dart';
import 'package:yummy/pages/sandwich_item_page.dart';
import 'package:yummy/pages/burger_item_page.dart';
import 'package:yummy/pages/signup_page.dart';
import 'package:yummy/screens/welcome_screen.dart';
import 'package:yummy/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:yummy/provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          "welcomepage": (context) => WelcomeScreen(),
          "signuppage": (context) => SignupPage(),
          "loginpage": (context) => LoginPage(),
          "homepage": (context) => HomePage(),
          "burgerItemPage": (context) => BurgerItemPage(),
          "pizzaItemPage": (context) => PizzaItemPage(),
          "sandwichItemPage": (context) => SandwichItemPage(),
          "noodleItemPage": (context) => NoodleItemPage(),
        },
      ),
    );
  }
}
