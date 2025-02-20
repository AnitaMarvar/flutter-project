import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{

  //get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //get current user
  User? getCurrentUser(){
    return _firebaseAuth.currentUser;
  }
  
  Future<UserCredential> signInWithEmailPassword(String email,password) async{
    //sign in
    try{
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      
      return userCredential;
    }
    on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }


  Future<UserCredential> signUpWithEmailPassword(String email,password) async{
    //sign up
    try{
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      
      return userCredential;
    }
    on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  //sign out

  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }
}