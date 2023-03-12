import 'package:flutter/material.dart';
import 'package:yummy/widgets/home_nav_bar.dart';
import 'package:yummy/widgets/burger_widget.dart';
import 'package:yummy/widgets/noodle_widget.dart';
import 'package:yummy/widgets/pizza_widget.dart';
import 'package:yummy/widgets/sandwich_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Icon(Icons.sort_rounded,
                              color: Colors.white, size: 35)),
                      InkWell(
                          onTap: () {},
                          child:
                              Icon(Icons.search, color: Colors.white, size: 35))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Yummyy 😋",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Delivers On Time",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 22,
                      ),
                    )),
                SizedBox(
                  height: 23,
                ),
                TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 20),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(text: "Burger"),
                      Tab(text: "Pizza"),
                      Tab(text: "Sandwich"),
                      Tab(text: "Noodle"),
                    ]),
                Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        BurgerWidget(),
                        PizzaWidget(),
                        SandwichWidget(),
                        NoodleWidget(),
                      ],
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
