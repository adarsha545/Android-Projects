import 'package:flutter/material.dart';
import 'package:just_eat/widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: const Color(0xFF232227),
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25),
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
                                child: Icon(Icons.search,
                                    color: Colors.white, size: 35))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Burger King",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Delivers On Time",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 22,
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      TabBar(
                          isScrollable: true,
                          labelStyle: TextStyle(fontSize: 20),
                          labelPadding: EdgeInsets.symmetric(horizontal: 20),
                          tabs: [
                            Tab(text: "Burger"),
                            Tab(text: "Pizza"),
                            Tab(text: "Cheese"),
                            Tab(text: "Pasta"),
                          ]),
                      Flexible(
                          flex: 1,
                          child: TabBarView(
                            children: [
                              ItemWidget(),
                              Container(
                                color: Colors.blue,
                              ),
                              Container(
                                color: Colors.blue,
                              ),
                              Container(
                                color: Colors.blue,
                              ),
                              Container(
                                color: Colors.blue,
                              ),
                            ],
                          ))
                    ],
                  )))),
    );
  }
}