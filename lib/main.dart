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
        primarySwatch: Colors.orange,
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
  var info = 'les buttons';
  int note = 0;
  @override
  void initState() {
    super.initState();
    info = 'Bienvenue sur la page';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(info),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => debugPrint('Okay'),
              child: Text(
                'Boutton flat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  note += 1;
                });
              },
              icon: Icon(
                Icons.thumb_up,
                color: Colors.blue,
                size: 70,
              ),
              tooltip: 'jaime',
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  note -= 1;
                });
              },
              icon: Icon(
                Icons.thumb_down,
                color: Colors.red,
                size: 70,
              ),
              tooltip: 'je n aime pas',
            ),
            Text(
              'Votre notre de point est $note',
              style: TextStyle(color: Colors.indigo, fontSize: 20),
            )
          ],
        ));
  }
}
