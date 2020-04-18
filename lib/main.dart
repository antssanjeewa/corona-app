import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

import './data_source.dart';
import './home_page.dart';

ConnectivityResult result;

Future _checkConnection() async {
  result = await (Connectivity().checkConnectivity());
  Connectivity().onConnectivityChanged.listen((ConnectivityResult thisResult) {
    result = thisResult;
  });
}

void main() {
  _checkConnection().then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult thisResult) {
      if (thisResult != ConnectivityResult.none)
        setState(() {
          result = thisResult;
        });
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlack,
        accentColor: Colors.blue
      ),
      home: result == ConnectivityResult.none || result == null
          ? NoConnectionPage()
          : HomePage(),
    );
  }
}

class NoConnectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("No Connection",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            Image.asset("images/e1.png")
          ],
        ),
      ),
    );
  }
}
