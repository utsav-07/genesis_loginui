import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:genesis/providers/login_provider.dart';
import 'package:genesis/providers/myinfo.dart';
import 'package:genesis/screens/Login/login_screen.dart';
import 'package:genesis/screens/home.dart';
import 'package:genesis/screens/registration/new_user.dart';
import './providers/new_user_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void r(BuildContext ctx) async {
    await Provider.of<MyInfo>(ctx).check();
  }

  // This widget `is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: NewUserInfo()),
          ChangeNotifierProvider.value(value: MyInfo()),
          ChangeNotifierProvider.value(value: LoginProvider())
        ],
        child: MaterialApp(
            initialRoute: '/',
            routes: {},
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: Builder(
              builder: (ctx) => StreamBuilder(
                  builder: (ct, snap) {
                    if (FirebaseAuth.instance.currentUser == null) {
                      return LoginScreen();
                    } else {
                      r(ctx);
                      return Home();
                    }
                  },
                  stream: FirebaseAuth.instance.authStateChanges()),
            )));
  }
}
