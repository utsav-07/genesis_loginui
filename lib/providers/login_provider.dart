import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  Future<dynamic> sumbit(List<TextEditingController> _list) async {
    if (!_list[0].text.contains('@') || _list[1].text.isEmpty)
      throw "Invalid Email or Password";

    if (_list[1].text.length < 6)
      throw "Length of the password should be 6 or more characters";

    return await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _list[0].text, password: _list[1].text)
        .then((value) {
      return value.toString();
    }).catchError((e) {
      throw e.toString();
    });
  }
}
