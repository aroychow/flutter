import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Appbar Title"),
          backgroundColor: Colors.green[300],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Test text data",
                style: TextStyle(fontSize: 22.0),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text(
                    'Click me to change me',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  color: Colors.green[300],
                  onPressed: () {},
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}