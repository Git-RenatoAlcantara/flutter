// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on _UserControllerBase, Store {
  Computed<List<String>> _$isValidComputed;

  @override
  List<String> get isValid =>
      (_$isValidComputed ??= Computed<List<String>>(() => super.isValid,
              name: '_UserControllerBase.isValid'))
          .value;

  final _$_UserControllerBaseActionController =
      ActionController(name: '_UserControllerBase');

  @override
  bool _isPasswordValid() {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase._isPasswordValid');
    try {
      return super._isPasswordValid();
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool _isMailValid() {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase._isMailValid');
    try {
      return super._isMailValid();
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isValid: ${isValid}
    ''';
  }
}
