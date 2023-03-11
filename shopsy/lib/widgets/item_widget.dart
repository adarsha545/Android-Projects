import 'package:first_project/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  //const ItemWidget({super.key});

  final Item item;

  const ItemWidget({super.key, required this.item})
      : assert(item != null),
        super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name}pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\₹${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
              color: Colors.deepPurple[900], fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
