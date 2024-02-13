import 'package:flutter/material.dart';
import 'package:secondsemflut/model/top_box_office_model.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: topBox.length,
        itemBuilder: (context, index) {
          final topBoxofficeData = topBox[index];
        return   ListTile(
          leading:  Icon(topBoxofficeData.icon),
          title:  Text(topBoxofficeData.title??'title'),
          subtitle:  Text(topBoxofficeData.revenue.toString()),
          trailing: Text(index.toString()),
         
        
        );
      }),
    );
  }
}
