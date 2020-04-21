import 'package:flutter/material.dart';
import 'HomeVC.dart';
import 'package:grunt/Controlers/screens/tab1.dart';
import 'package:grunt/Controlers/screens/tab2.dart';
import 'package:grunt/Controlers/screens/tab3.dart';


class LoginVC extends StatefulWidget {
  LoginVC({Key key, this.title}) : super(key: key);

  final String title;
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginVC> {
  TextStyle style = TextStyle(
      fontFamily: 'Roboto_Condensed',
      fontSize: 20.0,
      fontStyle: FontStyle.italic);
  String userEmail = "";
  void loginction() {
    setState(() {
      print('user enter');
      print(userEmail);
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeVC()),
          );
       FocusScope.of(context).unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final emailFild = TextField(
      onChanged: (txtValue) {
        userEmail = txtValue;
      },
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20.0),
          hintText: 'Email',
          border: OutlineInputBorder()),
    );
    final password = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20.0),
          hintText: 'Password',
          border: OutlineInputBorder()),
    );
    final loginBtn = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(30),
        onPressed: () {
          loginction();
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 155.0,
                child: Image.asset(
                  'asset/Images/chat-icon@3x.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 40.0),
              emailFild,
              SizedBox(height: 30.0),
              password,
              SizedBox(height: 140.0),
              loginBtn,
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    ));
  }
}
