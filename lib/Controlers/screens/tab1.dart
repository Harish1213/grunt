import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grunt/Controlers/SideMenuVC.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin<Tab1> {
  @override
  void initState() {
    super.initState();
    print('initState Tab1');
  }

  List<Avengers> avengers;
  List<Avengers> selectedAvengers;
  bool sort;
  @override
  Widget build(BuildContext context) {
    print('build Tab1');

  
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
            icon: Icon(Icons.access_alarm),
            iconSize: 30.0,
            onPressed: () {
              debugPrint('action fire');
              Timer(Duration(seconds: 10), () {
                Scaffold.of(context).showSnackBar(snackBar);
              });
              _showAlert(context);
            }),
      ),
      body: Text('data'),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Wifi"),
              content: Text("Wifi not detected. Please activate it."),
            ));
  }

  final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
  @override
  bool get wantKeepAlive => true;
}

class Avengers {
  String name;
  String action;
  Avengers({this.name, this.action});

  static List<Avengers> getAvangers() {
    return <Avengers>[
      Avengers(name: 'harsh', action: 'tttttttt'),
      Avengers(name: 'deeep', action: 'rrrrrr'),
      Avengers(name: 'adeeee', action: 'yyyyyyy')
    ];
  }
}
