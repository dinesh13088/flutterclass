import 'package:flutter/material.dart';
import 'package:secondsemflut/sevice/firebase_database.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  List<dynamic> usersList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('profile'),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: FirebaseDatabaseService().getUsersInaCollection(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return  Center(
                  child: Text('Error Fetching users ${snapshot.error}'),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data != null) {
                  print('Snap Shot ${snapshot.data}');
                  usersList = snapshot.data as List;
                  return Center(
                    child: Text('${usersList[0]}'),
                  );
                } else {
                  return Center(
                    child: Text('No users found'),
                  );
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}
