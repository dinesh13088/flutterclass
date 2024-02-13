import 'package:flutter/material.dart';
import 'package:secondsemflut/custompaint/right_half_oval.dart';
import 'package:secondsemflut/widgets/elements.dart';
import 'package:secondsemflut/widgets/option.dart';
import 'package:secondsemflut/widgets/stack_for_background.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    const height = SizedBox(
      height: 10,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('DashBoard'),
          centerTitle: true,
          elevation: 0,
          actions: [
            Container(
              height: 100,
              width: 110,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(230, 230, 250, 0.2),
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.elliptical(80, 400),
                  )),
              child: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            const StackBackground(),
            Stack(
              children: [
                Positioned(
                    bottom: MediaQuery.of(context).size.height / 2.4,
                    child: SizedBox(
                      child: CustomPaint(
                        size: Size(300, (300 * 0.6666666666666666).toDouble()),
                        painter: RightOval(),
                      ),
                    )),
              ],
            ),
            Center(
              child: Column(
                children: [
                  height,
                  const CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage('assets/images/dinesh.jpg'),
                  ),
                  height,
                  Text(
                    'Dinesh Tamang',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  height,
                  Text(
                    'Members since july 22nd february ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  height,
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      child: const Text('Share Account')),
                  height,
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 1.9,
                    child: GridView.builder(
                        itemCount: 6,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3,
                        ),
                        itemBuilder: ((context, index) => Option(
                              color: element[index].color ?? Colors.black,
                              icon: element[index].icon ?? Icons.person,
                              backgroundcolor: element[index].backgroundColor ??
                                  Colors.black,
                              label: element[index].itemName ?? 'Label',
                            ))),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
