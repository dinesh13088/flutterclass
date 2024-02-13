// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class StackBackground extends StatelessWidget {

   const StackBackground({super.key,});
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.9,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 110,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(230, 230, 250, 0.2),
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(150),
                    )),
              ),
            )
          ],
        );
  }
}