import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "IPhoe 14 Pro Max",
      desc: "8 / 256 GB ",
      price: 1099,
      color: "Purple",
      image: "https://m.media-amazon.com/images/I/71yzJoE7WlL._SX522_.jpg",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
