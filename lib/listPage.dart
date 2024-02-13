import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          Container(
              padding: EdgeInsets.all(8),
              child: Image.network(
                'https://media.istockphoto.com/id/469532554/photo/bahakapur-nepal.jpg?s=2048x2048&w=is&k=20&c=4Z8Z0vM9e-n53sNdU78VU3R5uFRUtW5eIAYJnqVjBWE=',
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Nepal',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Text('description  1 hwakldfhlasjdhfkhsa df hdfkhasdkhfsajd fkj'),
          const SizedBox(
            height: 30,
          ),
          Text('description  1 hwakldfhlasjdhfkhsa df hdfkhasdkhfsajd fkjcfsdZXfsas sdgasgdaga sdgasdgsdagsdgasdgasdg sg agasdgasdgas dgfgafg aga gafg',),
           const SizedBox(
            height: 30,
          ),
          Text('description  1 hwakldfhlasjdhfkhsa df hdfkhasdkhfsajd fkjcfsdZXfsas sdgasgdaga sdgasdgsdagsdgasdgasdg sg agasdgasdgas dgfgafg aga gafg',),
           const SizedBox(
            height: 30,
          ),
          Text('description  1 hwakldfhlasjdhfkhsa df hdfkhasdkhfsajd fkjcfsdZXfsas sdgasgdaga sdgasdgsdagsdgasdgasdg sg agasdgasdgas dgfgafg aga gafg',),
           const SizedBox(
            height: 30,
          ),
          Text('description  1 hwakldfhlasjdhfkhsa df hdfkhasdkhfsajd fkjcfsdZXfsas sdgasgdaga sdgasdgsdagsdgasdgasdg sg agasdgasdgas dgfgafg aga gafg',),
           const SizedBox(
            height: 30,
          ),
          Text('description  1 hwakldfhlasjdhfkhsa df hdfkhasdkhfsajd fkjcfsdZXfsas sdgasgdaga sdgasdgsdagsdgasdgasdg sg agasdgasdgas dgfgafg aga gafg',),
        
        ]),
      ),
    );
  }
}
