import 'package:flutter/material.dart';

class Elements {
  final Color? color;
  final Color? backgroundColor;
  final IconData? icon;
  final String? itemName;
  Elements({this.color, this.backgroundColor, this.itemName, this.icon});
}

List<Elements> element = [
  Elements(
    icon: Icons.shopping_cart,
    color: Colors.blue,
    backgroundColor: const Color.fromARGB(255, 185, 211, 233),
    itemName: 'Shopping Cart',
  ),
  Elements(
    icon: Icons.car_crash_outlined,
    color: Colors.red,
    backgroundColor:const Color.fromARGB(255, 237, 217, 216),
    itemName: 'Ubers',
  ),
  Elements(
    icon: Icons.badge,
    color: Colors.green,
    backgroundColor: Color.fromARGB(255, 111, 232, 117),
    itemName: 'Groceries',
  ),
  Elements(
    icon: Icons.heart_broken,
    color: Colors.orange,
    backgroundColor:const  Color.fromARGB(255, 234, 231, 213),
    itemName: 'Dates',
  ),
   Elements(
    icon:Icons.bar_chart,
    color: Colors.deepPurple,
    backgroundColor: const  Color.fromARGB(255, 232, 225, 245),
    itemName: 'Stats',
  ),
  Elements(
    icon:Icons.card_giftcard_sharp,
    color: Colors.blue,
    backgroundColor:Color.fromARGB(255, 142, 180, 246),
    itemName: 'Cards',
  ),
];

