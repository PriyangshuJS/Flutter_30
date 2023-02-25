import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> items = [
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

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
