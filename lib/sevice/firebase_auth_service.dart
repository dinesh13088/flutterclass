import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> createUserWithAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print('Something went wrong $e');
    }
    return null;
  }
  Future<User?>loginWithEmailPassword(String email,String password) async{
    try{
      UserCredential userCredential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;

    }
    on FirebaseAuthException catch(e)
    {
      print('Something went wrong $e');
    }
    return null;
  }
  //This function is used to log out usert from firbase

  Future<void> signOutUser()async{
    try{
      _auth.signOut();
    }
    catch(e)
    {
      print('Error while signout $e');
    }
  }
}

