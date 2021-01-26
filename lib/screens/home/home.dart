import 'package:flutter/material.dart';
import 'package:loginwithfirebase/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[80],
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.singOut();
            },
          )
        ],
      ),
    );
  }
}
