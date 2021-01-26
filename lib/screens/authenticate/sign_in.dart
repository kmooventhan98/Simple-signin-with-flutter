import 'package:flutter/material.dart';
import 'package:loginwithfirebase/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text('Please Sign In'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: RaisedButton(
            child: Text('Signin Annoumously'),
            onPressed: () async {
              dynamic result = await _auth.signInAnnon();
              if (result == null) {
                print('Error in signin');
              } else {
                print('SIGNED IN');
                print(result.uid);
              }
            },
          ),
        ));
  }
}
