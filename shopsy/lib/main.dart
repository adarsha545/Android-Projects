import 'package:first_project/core/store.dart';
import 'package:first_project/pages/cart_page.dart';
import 'package:first_project/utils/routes.dart';
import 'package:first_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/Home_Page.dart';
import 'pages/Login_Page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => Login_Page(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login_Page(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
