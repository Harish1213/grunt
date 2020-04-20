import 'package:flutter/material.dart';

class HomeVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
            icon: const Icon(Icons.slideshow),
            iconSize: 35.0,
            color: Colors.white,
            tooltip: 'Show Snackbar',
            onPressed: () {
            },
          ),
        
        title: Text("Home"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
     );

  }

}
