import 'package:flutter/material.dart';
import "package:app1/models/catalog.dart";

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        trailing: Text("\$${item.price}"),
        subtitle: Text(item.desc),
      ),
    );
  }
}
