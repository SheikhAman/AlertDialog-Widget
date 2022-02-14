import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAlertDialog();
  }
}

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  "Title",
                  style: TextStyle(color: Colors.black),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text("Yes", style: TextStyle(color: Colors.black)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: Text("No", style: TextStyle(color: Colors.black)),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
                content: Text("Body"),
              ),
            );
          },
          child: Text("Show Dialog", style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
