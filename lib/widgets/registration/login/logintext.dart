import 'package:flutter/material.dart';

class LoginText extends StatefulWidget {
  final List<TextEditingController> _list;
  LoginText(this._list);
  @override
  _LoginTextState createState() => _LoginTextState();
}

class _LoginTextState extends State<LoginText> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          controller: widget._list[0],
          decoration: InputDecoration(labelText: "Email"),
        ),
        TextFormField(
          controller: widget._list[1],
          decoration: InputDecoration(labelText: "Password"),
        ),
      ],
    ));
  }
}
