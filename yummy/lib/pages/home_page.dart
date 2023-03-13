import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummy/widgets/drawer.dart';
//import 'package:yummy/widgets/home_nav_bar.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.black87,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_book_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_location))
          ],
        ),
        drawer: MyDrawer(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  /*child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            //Scaffold.of(context).openDrawer();
                          },
                          child: Icon(Icons.sort_rounded,
                              color: Colors.white, size: 35)),
                      InkWell(
                          onTap: () {},
                          child:
                              Icon(Icons.search, color: Colors.white, size: 35))
                      //drawer:NavigationDrawer(children: children)
                    ],
                  ),*/
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Yummyy 😋",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
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
                  height: 11,
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
        // bottomNavigationBar: HomeNavBar(),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            onTap: (index) {},
            height: 70,
            color: Colors.deepPurple.shade900,
            items: [
              Icon(Icons.home_outlined, size: 30, color: Colors.white),
              Icon(Icons.favorite_border_rounded,
                  size: 30, color: Colors.white),
              Icon(Icons.shopping_cart_checkout_rounded,
                  size: 30, color: Colors.white),
              Icon(Icons.notifications_active_outlined,
                  size: 30, color: Colors.white),
              Icon(CupertinoIcons.profile_circled,
                  size: 30, color: Colors.white),
            ]),
      ),
    );
  }
}
