import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Stateful App',
      home: ButtonClick(),
    );
  }
}

class ButtonClick extends StatefulWidget {
  @override
  _ButtonClickState createState() => _ButtonClickState();
}

class _ButtonClickState extends State<ButtonClick> {
  int counter;
  String clickText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter = counter ?? 0;
    clickText = 'Button clicked ${counter} times';
  }

  void _decrementCounter(_) {
    setState(() {
      counter--;
      clickText = 'Button clicked ${counter} times';
    });
  }

  void _incrementCounter(_) {
    setState(() {
      counter++;
      clickText = 'Button clicked ${counter} times';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Stateful Appbar Title"),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              clickText,
              style: TextStyle(fontSize: 22.0),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text(
                  'Click me to increase counter',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                color: Colors.green[300],
                onPressed: () => _incrementCounter(null),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text(
                  'Click me to decrease counter',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                color: Colors.green[300],
                onPressed: () => _decrementCounter(null),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
