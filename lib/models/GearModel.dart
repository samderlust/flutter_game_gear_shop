import 'package:flutter/material.dart';

List<GearModel> gears = [
  GearModel(
      cat: "Accessories",
      name: "Nintedo Switch Pro Controller",
      img: "assets/images/switchController.png",
      price: 219,
      color: Colors.orange,
      desc:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  GearModel(
      cat: "Accessories",
      name: "DualShock 4",
      img: "assets/images/dual.png",
      price: 99,
      color: Colors.greenAccent,
      desc:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  GearModel(
      cat: "Accessories",
      name: "Nintedo Joy Cons",
      img: "assets/images/joy.png",
      price: 100,
      color: Colors.amber,
      desc:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  GearModel(
      cat: "Accessories",
      name: "Xbox Wireless Controller",
      img: "assets/images/xbox.png",
      price: 109,
      color: Colors.brown[100],
      desc:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
];

class GearModel {
  final String name, img, desc, cat;
  final double price;
  final Color color;

  GearModel({this.name, this.img, this.price, this.color, this.desc, this.cat});
}
