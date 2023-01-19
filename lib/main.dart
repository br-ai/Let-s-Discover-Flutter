import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: soir(),
    );
  }
}

// ignore: camel_case_types
class soir extends StatefulWidget {
  const soir({Key? key}) : super(key: key);

  @override
  State<soir> createState() => _soirState();
}

// ignore: camel_case_types
class _soirState extends State<soir> {
  var info = 'Floatting action button';
  String value = '';

  void onshow() => setState(() {
        value = new DateTime.now().toString();
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
      ),
      body: Center(
        child: Text(
          value,
          style: TextStyle(color: Colors.pink),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => onshow(),
        backgroundColor: Colors.red,
        label: Text('time'),
        icon: Icon(Icons.timer),
      ),
    );
  }
}
