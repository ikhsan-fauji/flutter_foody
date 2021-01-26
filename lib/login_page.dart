import 'package:flutter/material.dart';
import 'components/rounded_button.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36.00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username or Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0)),
                  ),
                ),
                TextContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.remove_red_eye_sharp)
                    ),
                  ),
                ),
                RoundedButton(text: 'LOGIN')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  final child;
  const TextContainer({
    Key key, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: child,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey
          )
        ),
      ),
    );
  }
}
