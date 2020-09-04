import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut().then((value) {
                //  Navigator.of(context).pushReplacementNamed('/');
              });
            },
            child: Text("SIGNOUT")),
      ),
    );
  }
}
