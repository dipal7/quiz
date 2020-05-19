import 'package:firstflutter/screens/register/register.dart';
import 'package:firstflutter/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firstflutter/models/user.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value (
          value: AuthService().user,
          child: MaterialApp(
        home:Register(),
      ),
    );
      }
}
 
 
