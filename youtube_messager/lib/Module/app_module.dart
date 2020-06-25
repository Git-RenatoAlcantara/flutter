import 'package:flutter/material.dart';
import 'package:youtube_messager/Controller/firebase_controller.dart';
import 'package:youtube_messager/Controller/user_controller.dart';
import 'package:youtube_messager/Model/user_model.dart';
import 'package:youtube_messager/View/signup_view.dart';
import 'package:youtube_messager/repository/firebase_reposity.dart';
import 'package:youtube_messager/route.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule{

  List<Bind> get binds => [
    Bind((_) => UserModel()),
    Bind((_) => UserController()),
    Bind((_) => FirebaseRepository()),
    Bind((_) => FirebaseController())
  ];


  @override
  // TODO: implement routers
  List<Router> get routers => [
    Router('/', child: (_, args) => SinupScreen()),
  ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => MainWidget();
}