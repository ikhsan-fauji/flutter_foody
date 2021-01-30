import 'package:flutter/material.dart';
import 'package:futter_foody/constants.dart';
import 'package:futter_foody/home_page.dart';
import 'components/rounded_button.dart';
import 'components/text_container.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = new TextEditingController();

  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Center(
          child: Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(36.00),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome Back!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    Image.asset('assets/images/login-ilustration.png'),
                    SizedBox(height: 10),
                    usernameInput(context),
                    SizedBox(height: 10),
                    passwordInput(context),
                    SizedBox(height: 20),
                    forgotPassword(context),
                    SizedBox(height: 20),
                    submitButton(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget usernameInput(BuildContext context) {
    return TextContainer(
      borderWidth: 1,
      child: TextField(
        controller: usernameController,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            suffixIcon: null,
            hintText: 'Username or Email',
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0)),
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget passwordInput(BuildContext context) {
    return TextContainer(
      borderWidth: 1,
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: 'Password',
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            suffixIcon: Icon(Icons.remove_red_eye_sharp)),
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget forgotPassword(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        child: Text(
          'Forgot password?',
          style: TextStyle(color: primaryCollor, fontStyle: FontStyle.italic, fontSize: 14)
        ),
        onTap: () =>
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Link to reset password page.'),
              action: SnackBarAction(
                label: 'Close',
                onPressed: () {},
              ),
            ),
          )
        ),
    );
  }

  Widget submitButton(BuildContext context) {
    return RoundedButton(
      text: 'Login',
      color: primaryCollor,
      width: 0.6,
      fontSize: 20.0,
      verticalMargin: 10,
      verticalPadding: 16,
      horizontalPadding: 40,
      borderRadius: 30,
      onPress: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false)
    );
  }
}
