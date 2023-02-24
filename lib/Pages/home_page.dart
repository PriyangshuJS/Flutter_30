import 'package:app1/models/catalog.dart';
import 'package:app1/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app1/widgets/item.dart';

class Homepage extends StatelessWidget {
  var nu = 1;
  String s = "Learning from Codepur.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
