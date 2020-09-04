import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:genesis/components/rounded_button.dart';
import 'package:genesis/components/rounded_input_field.dart';
import 'package:genesis/components/rounded_password_field.dart';
import 'package:genesis/providers/login_provider.dart';
import 'package:genesis/screens/login/components/background.dart';
import 'package:genesis/widgets/registration/login/logintext.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  List<TextEditingController> _controller = [
    TextEditingController(),
    TextEditingController(),
  ];
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),

          ],
        ),
      ),
    );
  }
}
