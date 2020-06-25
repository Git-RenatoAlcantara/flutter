// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModel on _UserModelBase, Store {
  Computed<String> _$getNameComputed;

  @override
  String get getName => (_$getNameComputed ??=
          Computed<String>(() => super.getName, name: '_UserModelBase.getName'))
      .value;
  Computed<String> _$getPasswordComputed;

  @override
  String get getPassword =>
      (_$getPasswordComputed ??= Computed<String>(() => super.getPassword,
              name: '_UserModelBase.getPassword'))
          .value;
  Computed<String> _$getEmailComputed;

  @override
  String get getEmail =>
      (_$getEmailComputed ??= Computed<String>(() => super.getEmail,
              name: '_UserModelBase.getEmail'))
          .value;
  Computed<String> _$getRepesswordComputed;

  @override
  String get getRepessword =>
      (_$getRepesswordComputed ??= Computed<String>(() => super.getRepessword,
              name: '_UserModelBase.getRepessword'))
          .value;

  final _$_nameAtom = Atom(name: '_UserModelBase._name');

  @override
  String get _name {
    _$_nameAtom.reportRead();
    return super._name;
  }

  @override
  set _name(String value) {
    _$_nameAtom.reportWrite(value, super._name, () {
      super._name = value;
    });
  }

  final _$_emailAtom = Atom(name: '_UserModelBase._email');

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  final _$_passwordAtom = Atom(name: '_UserModelBase._password');

  @override
  String get _password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  set _password(String value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  final _$_confirmPasswordAtom = Atom(name: '_UserModelBase._confirmPassword');

  @override
  String get _confirmPassword {
    _$_confirmPasswordAtom.reportRead();
    return super._confirmPassword;
  }

  @override
  set _confirmPassword(String value) {
    _$_confirmPasswordAtom.reportWrite(value, super._confirmPassword, () {
      super._confirmPassword = value;
    });
  }

  final _$_UserModelBaseActionController =
      ActionController(name: '_UserModelBase');

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConfirmPassword(String value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setConfirmPassword');
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getName: ${getName},
getPassword: ${getPassword},
getEmail: ${getEmail},
getRepessword: ${getRepessword}
    ''';
  }
}
