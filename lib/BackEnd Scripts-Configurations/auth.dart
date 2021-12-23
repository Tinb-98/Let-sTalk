// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:lets_talk/mdl/user.dart';
//
// class AuthMethod{
//
// final FirebaseAuth _auth=FirebaseAuth.instance;
// User _userFromFireBaseDB(FirebaseUser user){
//   return user !=null ? User(userID:user.uid):null;
// }
// Future signInWithEmailAndPassword(String email,String password) async {
//   try{
//     UserCredential result= await _auth.signInWithEmailAndPassword(email: email, password: password;
//     User? user= result.user;
//   }
//   catch(e){
//
//   }
//   return null;
// }
// }