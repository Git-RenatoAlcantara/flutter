import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:youtube_messager/Controller/firebase_controller.dart';
import 'package:youtube_messager/Controller/user_controller.dart';

class SinupScreen extends StatefulWidget {
  @override
  _SinupScreenState createState() => _SinupScreenState();
}

class _SinupScreenState extends State<SinupScreen> {
  UserController _userController;
  FirebaseController _fireBaseController;
  bool loading = false;

  @override
  void initState() {
    _userController = Modular.get<UserController>();
    _fireBaseController = Modular.get<FirebaseController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "images/login_background-2.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "images/login_background-1.png",
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: (size.height - size.height) + 190,
                      child: Container(
                        width: size.width,
                        height: size.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                              child: Text(
                                "Obter Conta",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    input_name(userController: _userController),
                                    input_email(
                                        userController: _userController),
                                    input_password(
                                        userController: _userController),
                                    input_repassword(
                                        userController: _userController),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Checkbox(
                                            value: false,
                                            onChanged: (check) {},
                                          ),
                                          Text("Eu li e aceito os"),
                                          Text("termos e politicas",
                                              style: TextStyle(
                                                  color: Colors.blue[600],
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    Observer(builder: (context) {
                                      return FlatButton(
                                          onPressed: () {
                                            if (_userController.isValid.length >
                                                0) {
                                              final snackBar = SnackBar(
                                                  backgroundColor: Colors.red,
                                                  content: Text(_userController
                                                      .isValid.first));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackBar);
                                                
                                            }
                                            _fireBaseController.createUserWithEmailAndPassword();
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            child: Center(
                                              child: Text("CADASTRAR",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ));
                                    })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget input_name({UserController userController}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Material(
        color: Color(0xfff2f5f6),
        child: Observer(builder: (_) {
          return TextField(
            obscureText: false,
            onChanged: userController.userModel.setName,
            decoration: InputDecoration(
                hintText: "Digite seu nome",
                contentPadding: EdgeInsets.only(left: 10),
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none),
          );
        }),
      ),
    );
  }

  Widget input_email({UserController userController}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Material(
        color: Color(0xfff2f5f6),
        child: Observer(builder: (_) {
          return TextField(
            obscureText: false,
            onChanged: userController.userModel.setEmail,
            decoration: InputDecoration(
                hintText: "Entre com o E-mail",
                contentPadding: EdgeInsets.only(left: 10),
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none),
          );
        }),
      ),
    );
  }

  Widget input_password({UserController userController}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Material(
        color: Color(0xfff2f5f6),
        child: Observer(builder: (_) {
          return TextField(
            obscureText: false,
            onChanged: userController.userModel.setPassword,
            decoration: InputDecoration(
                hintText: "Entre com a senha",
                contentPadding: EdgeInsets.only(left: 10),
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none),
          );
        }),
      ),
    );
  }

  Widget input_repassword({UserController userController}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Material(
        color: Color(0xfff2f5f6),
        child: Observer(builder: (_) {
          return TextField(
            obscureText: false,
            onChanged: userController.userModel.setConfirmPassword,
            decoration: InputDecoration(
                hintText: "Confirme a senha",
                contentPadding: EdgeInsets.only(left: 10),
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none),
          );
        }),
      ),
    );
  }
}
