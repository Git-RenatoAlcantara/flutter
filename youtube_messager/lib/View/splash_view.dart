import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          "images/background.png",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "images/background-2.png",
          fit: BoxFit.cover,
        ),
        SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _primeiroTexto(),
            _segundoTexto(),
            _botaoLogar(),
            _botaoCadastrar(),
          ],
        ))
      ],
    ));
  }

  Widget _primeiroTexto() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 30, 10),
      child: Text(
        "Encontre seus amigos amigos próximos",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
      ),
    );
  }

  Widget _segundoTexto() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 30, 20),
      child: Text(
        "Encontre todos os seus amigos próximos de forma fácil e rapida.",
        textAlign: TextAlign.start,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _botaoLogar() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: FlatButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff2cb9b0),
            ),
            child: Center(
              child: Text(
                "Já possui uma conta? Logar",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )),
    );
  }

  Widget _botaoCadastrar() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: FlatButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "Faça sua conta. É grátis",
              ),
            ),
          )),
    );
  }
}
