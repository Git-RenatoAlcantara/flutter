import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_messager/View/signup_view.dart';
import 'package:youtube_messager/View/splash_view.dart';
import 'package:youtube_messager/route.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:youtube_messager/route.dart';

class AppModule extends MainModule{
  @override
  // TODO: implement binds
  List<Bind> get binds => [

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