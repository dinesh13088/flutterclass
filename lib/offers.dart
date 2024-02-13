import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Offer'),centerTitle: true,),
      body: const Center(child: Text('Hello this is offer'),),

    );
  }
}