import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color backgroundcolor;
  final String label;
  const Option(
      {super.key,
      required this.icon,
      required this.color,
      required this.backgroundcolor,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Chip(
              backgroundColor: backgroundcolor,
              label: Icon(icon, color: color, size: 35),
              shape: const CircleBorder(
                side: BorderSide.none,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(label)
          ],
        ));
  }
}
