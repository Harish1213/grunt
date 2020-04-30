import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
    debugPrint("rrrrrrr");
    debugPrint(_email);
    debugPrint(_password);

  showAlertDialog(this.context);

    try {
       AuthResult _user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'h@gmail.com', password: '123');
      debugPrint(_user.user.uid);
         Navigator.pop(this.context);
    } catch (e) {
      Navigator.pop(this.context);
      debugPrint(e);
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
              onSaved: (value) {
                debugPrint(value);
                debugPrint('kjdhfjks');
              },
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
                        if (_formkey.currentState.validate()) {
                          debugPrint('true');
                          fireBaseUserLogin();
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
                        } else {
                          debugPrint('False');
                        }
                      },
                      child: Text('Login Accont'),
                    ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: holderForm(),
      ),
    );
  }
}
showAlertDialog(BuildContext context){
      AlertDialog alert=AlertDialog(
        content: new Row(
            children: [
               CircularProgressIndicator(),
               Container(margin: EdgeInsets.only(left: 5),child:Text("Loading" )),
            ],),
      );
      showDialog(barrierDismissible: false,
        context:context,
        builder:(BuildContext context){
          return alert;
        },
      );
    }