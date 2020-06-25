import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:youtube_messager/Model/user_model.dart';
import 'package:youtube_messager/repository/firebase_reposity.dart';
import 'package:flutter_modular/flutter_modular.dart';
part 'firebase_controller.g.dart';

class FirebaseController = _FirebaseControllerBase with _$FirebaseController;

abstract class _FirebaseControllerBase with Store {
  final userModel = Modular.get<UserModel>();
  final firebaseRepository = Modular.get<FirebaseRepository>();

  @action
  createUserWithEmailAndPassword() async {
        String result = await firebaseRepository.createAccountWithEmailPassword(userModel);
        if(result != null) return print(result);
        print("Logado com sucesso!");
  }
}
