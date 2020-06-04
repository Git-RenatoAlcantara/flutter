import 'package:mobx/mobx.dart';
part 'user_model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  
  _UserModelBase(){
    autorun((_){
      print(_name);
    });
  }

  @observable
  String _name = "";
  @observable
  String _email = "";
  @observable
  String _password = "";
  @observable
  String _confirmPassword = "";

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "name": this._name,
      "email": this._email,
    };
    return map;
  }

  @action
  setName(String value) => _name = value;
  @action
  setEmail(String value) => _email = value;
  @action
  setPassword(String value) => _password = value;
  @action
  setConfirmPassword(String value) => _confirmPassword = value;

  @computed
  String get name => _name;


}