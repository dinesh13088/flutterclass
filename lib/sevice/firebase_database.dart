import 'package:cloud_firestore/cloud_firestore.dart';
class FirebaseDatabaseService{
  final dbinstance =FirebaseFirestore.instance;
  final usersList =[];

  ///this function is used to get a single user details from firebase

  Future getSingleUser() async{
    try{
        CollectionReference usersCollection = await dbinstance.collection('users');
        final userDoc = await usersCollection.doc('user1').get();
        if(userDoc.exists)
        {
          print('The user1 Details is ${userDoc.data()}');

        }
        else {
          print('Data not found');
        }

    }
    catch(e){
      print('Error fetching data $e');
    }
  }
  Future getUsersInaCollection()async{
    try{
      CollectionReference _usersCollection = await dbinstance.collection('users');
      await _usersCollection.get().then((querySnapshot) {
        for(var doc in querySnapshot.docs)
        {
          usersList.add(doc.data());
        }

      });
      print('${usersList.length}');
      return usersList;

    }
    catch(e)
    {
      print('Error while getting user $e');
    }
  }
}