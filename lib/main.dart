import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:secondsemflut/dash_board.dart';
import 'package:secondsemflut/listPage.dart';
import 'package:secondsemflut/list_view_page.dart';
import 'package:secondsemflut/login.dart';
import 'package:secondsemflut/offers.dart';
import 'package:secondsemflut/profile.dart';

import 'package:secondsemflut/regestration_form.dart';
import 'package:secondsemflut/register.dart';
import 'package:secondsemflut/splash.dart';
import 'package:secondsemflut/utils/default_firebase_option.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      '/': (context) =>  Login(),
      '/register': (context) => const Register(),
      '/listPage': (context) => const ListPage(),
      '/dashboard': (context) => const Dasshboard(),
      '/splash': (context) => const Splash(),
      '/myapp':(context) => MyApp(),
      '/profile':(context) => Profile(),
    },
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
  ));
}
Future<void> initializeFirebase ()async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages =  [const Dasshboard(), const ListViewPage(), RegestrationForm(), Profile()];
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
