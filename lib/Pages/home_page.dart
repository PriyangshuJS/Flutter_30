import 'package:app1/models/catalog.dart';
import 'package:app1/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app1/widgets/item.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    LoadData();
  }

  LoadData() async {
    var CatalogJson = await rootBundle.loadString("assets/Files/catalog.json");
    var DecodeData = jsonDecode(CatalogJson);
    var ProductData = DecodeData["products"];
    CatalogModel.items =
        List.from(ProductData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

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
