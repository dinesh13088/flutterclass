import 'package:flutter/material.dart';
import 'package:secondsemflut/dashboard.dart';
import 'package:secondsemflut/listPage.dart';
import 'package:secondsemflut/list_view_page.dart';
import 'package:secondsemflut/offers.dart';
import 'package:secondsemflut/profile.dart';
import 'package:secondsemflut/register.dart';
import 'package:secondsemflut/splash.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter App!!',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple, 
      primary: Colors.deepPurple,
      secondary: Colors.white,
      ),
      
      brightness: Brightness.light,
      useMaterial3: false,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white

        ),
        bodySmall:  TextStyle(
          fontSize: 15,
          color: Colors.white,
  
        )

      ),
    ),
    
    routes: {
      '/': (context) => const MyApp(),
      '/register': (context) => const Register(),
      '/listPage': (context) => const ListPage(),
      '/dashboard': (context) => const Dashboard(),
      '/splash': (context) => const Splash(),
    },
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = const [Dashboard(), ListViewPage(), Profile(), Offers()];
  int currentPage = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const  color = Color.fromRGBO(12, 175, 255, 1);
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 33,
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        items:  const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                color:color ,
              ),
              label: 'dashboard'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: color,
              ),
              label: 'ListView'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: color,
              ),
              label: 'profile'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bus_alert,
                color: color,
              ),
              label: 'offer'),
        ],
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
