import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grunt/Controlers/MaterialControls/controls.dart';

class FireLogin extends StatefulWidget {
  @override
  _FireLoginState createState() => _FireLoginState();
}

class _FireLoginState extends State<FireLogin>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final _formkey = GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  void fireBaseUserLogin() async {
    showAlertDialog(this.context);

    try {
      AuthResult _user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: '$_email', password: '$_password');
      debugPrint(_user.user.uid);
      Navigator.pop(this.context);
    } catch (e) {
      Navigator.pop(this.context);
      debugPrint(e);
    }
  }

  void createFireUser() async {
    showAlertDialog(this.context);

    try {
      AuthResult _userDate = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: ('$_email'), password: ('$_password'));
      debugPrint(_userDate.additionalUserInfo.username);
      Navigator.pop(this.context);
    } catch (e) {
      debugPrint(e.message);
      Navigator.pop(this.context);
    }
  }

  void sendEmail() async {
    try {
      FirebaseAuth.instance.sendPasswordResetEmail(email: ('$_email'));
      debugPrint('yyyyyyy');
    } catch (e) {
      debugPrint(e);
      debugPrint(e.message);
    }
  }

  Form holderForm() {
    return Form(
      key: _formkey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlutterLogo(
              size: 150,
              colors: Colors.orange,
              duration: Duration(seconds: 5),
            ),
            TextFormField(
              onSaved: (value) => _email = value.trimRight(),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter Valid Email id ';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                helperText: "Please enter your Valide Email Id",
                hintText: "User Email ID Enter Here",
              ),
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20.0,
              ),
            ),
            TextFormField(
              onSaved: (value) => _password = value.trimRight(),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter Valid  password ';
                } else {
                  return null;
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                helperText: "Please enter your Password",
                hintText: "Password Enter Here",
              ),
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsetsDirectional.zero,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        _formkey.currentState.save();

                        if (_formkey.currentState.validate()) {
                          debugPrint('true');
                          createFireUser();
                        } else {
                          debugPrint('False');
                        }
                      },
                      child: Text('cretae Accont'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        _formkey.currentState.save();
                        if (_formkey.currentState.validate()) {
                          debugPrint('true');
                          fireBaseUserLogin();
                        } else {
                          debugPrint('False');
                        }
                      },
                      child: Text('Login Accont'),
                    ),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          _formkey.currentState.save();
                          if (_formkey.currentState.validate()) {
                            sendEmail();
                          }
                          showAlertDialog(this.context);
                        },
                        child: Text('Forgot Accont'),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(),
  //     body: Padding(
  //       padding: EdgeInsets.all(30.0),
  //       child: holderForm(),
  //     ),
  //   );
  // }
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return listOfcontroles();
  }
}
