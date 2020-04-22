import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationVC extends StatefulWidget {
  
  @override
  _RegistrationVCState createState() => _RegistrationVCState();
}

class _RegistrationVCState extends State<RegistrationVC> {
  @override
  void initState() {
    super.initState();
    debugPrint('registration');
  }

final emailFild = TextField(
  cursorWidth: 5,
  
      onChanged: (txtValue) {
        debugPrint(txtValue);
      },
      obscureText: false,
      style: txtStyle,
      decoration: InputDecoration(
      
          contentPadding: EdgeInsets.all(20.0),
          labelText:'dddd',
          border: OutlineInputBorder()),
    );
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SignUp',
        ),
        brightness: Brightness.dark,
        elevation: 30,
      ),
      body: Container(
        child: emailFild,
      ),
    );
}
}
 final TextStyle txtStyle = TextStyle(
    fontSize: 20,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w200,
    height: 20,
    decorationColor: Colors.pink,
    decoration: TextDecoration.underline,
    debugLabel: 'harsh',
    
  );

  