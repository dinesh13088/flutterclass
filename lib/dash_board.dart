import 'package:flutter/material.dart';
import 'package:secondsemflut/sevice/firebase_auth_service.dart';

class Dasshboard extends StatelessWidget {
  const Dasshboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.logout),
            onTap: () async {
             print('On Button Tap');  
             await showDialog(context: context, builder: (context) =>  AlertDialog(
              
              title: const Text('SignOut'),
              content: const Text('Are you sure want to sign out?'),
              actions: [
                ElevatedButton(onPressed: (){
                  final firebase  = FirebaseAuthService();
                  firebase.signOutUser();
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacementNamed('/');
                }, child: const Text('Yes')),
                
                ElevatedButton(onPressed: (){

                }, child: const Text('No')),
              ],
             ),);
            },
          ),
        ],
      ),
      body:const  Center(
        child: Text(' This is the Dashboard'),
      ),
    );
  }
}