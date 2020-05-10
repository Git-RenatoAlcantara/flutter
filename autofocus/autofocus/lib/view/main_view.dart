import 'package:autofocus/view/widget/inputs_widgets.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => FormSMSValidate(),
      },
    );
  }
}

class FormSMSValidate extends StatefulWidget {
  @override
  _FormSMSValidateState createState() => _FormSMSValidateState();
}

class _FormSMSValidateState extends State<FormSMSValidate> {
  FocusNode myFirst, mySecond, myThird, myFourth;

  @override
  void initState() {
    super.initState();
    myFirst = FocusNode();
    mySecond = FocusNode();
    myThird = FocusNode();
    myFourth = FocusNode();
  }

  @override
  void dispose() {
    myFirst.dispose();
    mySecond.dispose();
    myThird.dispose();
    myFourth.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: widthScreen,
        height: heightScreen,
        child: Stack(children: <Widget>[
          Container(
            color: Colors.greenAccent,
            width: widthScreen,
            height: heightScreen / 3,
          ),
          Positioned(
            top: 130,
            left: widthScreen / 4,
            child: Material(
              elevation: 1,
              color: Colors.greenAccent,
              child: Container(
                width: 150,
                child: Image.asset(
                  'assets/post.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          bootom(widthScreen, heightScreen),
        ]),
      ),
    ));
  }

  Widget bootom(double widthScreen, heightScreen) {
    return Column(
      children: <Widget>[
        Flexible(flex: 1, child: Container()),
        Flexible(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  mainText(),
                  Container(
                      height: 60,
                      width: widthScreen,
                      margin: EdgeInsets.only(left: widthScreen / 5),
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            CustomFields(
                              focusNodeName: this.myFirst,
                              focusNodeNameRight: this.mySecond,
                              focusNodeNameLeft: null,
                              padding: 0,
                            ),
                            CustomFields(
                              focusNodeName: this.mySecond,
                              focusNodeNameRight: this.myThird,
                              focusNodeNameLeft: this.myFirst,
                              padding: 5,
                            ),
                            CustomFields(
                              focusNodeName: this.myThird,
                              focusNodeNameRight: this.myFourth,
                              focusNodeNameLeft: this.mySecond,
                              padding: 5,
                            ),
                            CustomFields(
                              focusNodeName: this.myFourth,
                              focusNodeNameRight: null,
                              focusNodeNameLeft: this.myThird,
                            ),
                          ])),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.greenAccent,
                        elevation: 1,
                        child: Container(
                          height: 40,
                          width: widthScreen,
                          child: Center(
                              child: Text(
                            "CONTINUAR",
                            style: TextStyle(color: Colors.white),
                          )),
                        )),
                  ),
                  Center(child: Text("Não recebeu o codigo? Reenviar codigo")),
                ],
              ),
            )),
      ],
    );
  }

  Widget mainText() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Text(
          "Entre com os 4 digitos que nós enviamos para o seu e-mail para continuar",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
