import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/basan.png'),
                SizedBox(height: 16.0),
                Text('Basan Clothing'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with PrimaryColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with PrimaryColorOverride (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }
}

// TODO: Add PrimaryColorOverride (103)