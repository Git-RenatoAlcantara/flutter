import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_messager/Model/user_model.dart';
class FirebaseRepository {
  FirebaseAuth _auth = FirebaseAuth.instance;
  
  Future createAccountWithEmailPassword(UserModel userModel) async {
     try{
       await _auth.createUserWithEmailAndPassword(email: userModel.getEmail, password: userModel.getPassword);
     }catch(onError){
        return onError.code;
     }
  }
}
