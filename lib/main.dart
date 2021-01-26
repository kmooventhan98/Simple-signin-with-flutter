import 'package:flutter/material.dart';
import 'package:loginwithfirebase/models/user.dart';
import 'package:loginwithfirebase/screens/wrapper.dart';
import 'package:loginwithfirebase/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
