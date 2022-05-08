import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{

  final FirebaseAuth _auth= FirebaseAuth.instance;

Future signInWithEmailAndPasswrd(String email,String password)async{
  try{

UserCredential result= await _auth.signInWithEmailAndPassword(email: email, password: password);
User? firebaseUser=result.user;
  }catch(e){}
}




}

