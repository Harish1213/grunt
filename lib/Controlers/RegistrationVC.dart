import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grunt/Utilitys/utilites.dart';

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

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'SignUp',
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.asset(
            'asset/Images/p.png',
            fit: BoxFit.cover,
            color: Colors.orange,
            colorBlendMode: BlendMode.lighten,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset('asset/Images/chat-icon@3x.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 10,
                        ),
                        height: screenHeight(context),
                        width: screenWidth(context) - 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(
                                20,
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                textCapitalization: TextCapitalization.words,
                                style: TextStyle(
                                  decorationColor: Colors.red,
                                  fontSize: 20.0,
                                ),
                                decoration:
                                    InputDecoration(labelText: 'username'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                20,
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                textCapitalization: TextCapitalization.words,
                                style: TextStyle(
                                  decorationColor: Colors.red,
                                  fontSize: 20.0,
                                ),
                                decoration:
                                    InputDecoration(labelText: 'username'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:50),
                 child: OutlineButton(
                  onPressed: (){},
                  splashColor: Colors.green[400],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: <Widget>[
                      
                      Image.asset('asset/Images/chat-icon@3x.png',
                      
                      height: 30,
                      width: 30,
                      ),
                      Text('   BACK',
                      style: TextStyle(
                        fontSize: 20,
                        
                      ),
                      ),
                    ],
                  
                  ),
                  ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

