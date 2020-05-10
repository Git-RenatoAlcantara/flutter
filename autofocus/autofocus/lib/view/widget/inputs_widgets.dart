import 'package:flutter/material.dart';

class CustomFields extends StatelessWidget {
  FocusNode focusNodeName, focusNodeNameRight, focusNodeNameLeft;
  double padding;

  CustomFields({this.focusNodeName, this.focusNodeNameRight, this.focusNodeNameLeft, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        width: 50,
        child: TextField(
          style: TextStyle(fontSize: 25),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          focusNode: this.focusNodeName,
          onChanged: (value) {
            if (value.isNotEmpty) {
              this.focusNodeNameRight.requestFocus();
            } else {
              this.focusNodeNameLeft.requestFocus();
            }
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '*',
          ), //Decoration
        ), //TextField
        decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border(
              bottom: new BorderSide(
            color: Colors.grey,
            style: BorderStyle.solid,
          )),
        ),
      ),
    );
  }
}
