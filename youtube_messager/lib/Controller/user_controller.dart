import 'package:mobx/mobx.dart';
import 'package:youtube_messager/Model/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  final userModel = Modular.get<UserModel>();

  @computed
  List<String> get isValid{
    List<String> errorMessage = [];

    if(!_isMailValid()){
      errorMessage.add("Email inválido!");
    }
    if(!_isPasswordValid()){
      errorMessage.add("Senha deve ter mais de 6 digitos");
    }
    return errorMessage;
  }

  @action
  bool _isPasswordValid() {
    return userModel.getPassword.length >= 6;
  }
  @action
  bool _isMailValid(){
    return userModel.getEmail.contains("@");
  }
}