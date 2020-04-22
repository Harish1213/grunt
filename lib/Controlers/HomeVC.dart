import 'package:flutter/material.dart';
import 'package:grunt/TabControler/tab_containter_default.dart';

class HomeVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabContainerDefault(),
    
//      TabContainerBottom(),
//      TabContainerLoad1Time(),
//      TabContainerIndexedStack(),
//      TabContainer(),
    );
  }
}
