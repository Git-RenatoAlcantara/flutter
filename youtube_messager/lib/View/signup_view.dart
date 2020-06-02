import 'package:flutter/material.dart';

class SinupScreen extends StatelessWidget {
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
                      top: (size.height - size.height) + 150,
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
                                    input_name(),
                                    input_email(),
                                    input_password(),
                                    input_repassword(),
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
                                    FlatButton(
                                        onPressed: () {},
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
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                        ))
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

  Widget input_name() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Material(
        color: Color(0xfff2f5f6),
        child: TextField(
          obscureText: false,
          onChanged: (value) {},
          decoration: InputDecoration(
              hintText: "Digite seu nome",
              contentPadding: EdgeInsets.only(left: 10),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget input_email() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Material(
        color: Color(0xfff2f5f6),
        child: TextField(
          obscureText: false,
          onChanged: (value) {},
          decoration: InputDecoration(
              hintText: "Entre com o E-mail",
              contentPadding: EdgeInsets.only(left: 10),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget input_password() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Material(
        color: Color(0xfff2f5f6),
        child: TextField(
          obscureText: false,
          onChanged: (value) {},
          decoration: InputDecoration(
              hintText: "Entre com a senha",
              contentPadding: EdgeInsets.only(left: 10),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget input_repassword() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Material(
        color: Color(0xfff2f5f6),
        child: TextField(
          obscureText: false,
          onChanged: (value) {},
          decoration: InputDecoration(
              hintText: "Confirme a senha",
              contentPadding: EdgeInsets.only(left: 10),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
