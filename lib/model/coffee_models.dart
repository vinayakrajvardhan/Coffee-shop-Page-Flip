import 'package:flutter/material.dart';

class Coffee {
  final String name;
  final String imagepath;
  final num price;
  String desc;
  Color color;

  Coffee({
    this.name,
    this.imagepath,
    this.price,
    this.desc,
    this.color,
  });

  static List<Coffee> contList = [
    Coffee(
      name: "Cold Brew",
      desc: "Dark Coffe nice brewed",
      price: 3.45,
      imagepath: "cff1.jpg",
      color: Colors.pink,
    ),
    Coffee(
      name: "Arabica",
      desc: "Dark Coffe nice brewed",
      price: 8.45,
      imagepath: "cb34.jpg",
      color: Colors.grey,
    ),
  ];

  static List<Coffee> coffeeList = [
    Coffee(
      name: "Cold Brew",
      price: 3.45,
      imagepath: "c1.jpg",
    ),
    Coffee(
      name: "Arabica",
      price: 7.45,
      imagepath: "c2.jpg",
    ),
    Coffee(
      name: "Robusta",
      price: 3.45,
      imagepath: "c3.jpg",
    ),
    Coffee(
      name: "Drip",
      price: 9.45,
      imagepath: "c4.jpg",
    ),
    Coffee(
      name: "Pour Over",
      price: 5.67,
      imagepath: "c5.jpg",
    ),
    Coffee(
      name: "Espresso",
      price: 7.67,
      imagepath: "c6.jpg",
    ),
    Coffee(
      name: "Cortado",
      price: 4.67,
      imagepath: "c7.jpg",
    ),
    Coffee(
      name: "Flat White",
      price: 5.97,
      imagepath: "c8.jpg",
    ),
    Coffee(
      name: "Irish Coffee",
      price: 6.78,
      imagepath: "c9.jpg",
    ),
  ];
}
