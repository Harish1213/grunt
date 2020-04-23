import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grunt/Controlers/RegistrationVC.dart';

import 'package:grunt/Controlers/loginVC.dart';
import 'package:image_picker/image_picker.dart';

class AppEnterVC extends StatelessWidget {
  MaterialButton customeBtn(String value, BuildContext dataContext) {
    return MaterialButton(
      onPressed: () {
        if (value == 'login') {
          Navigator.push(
              dataContext,
              MaterialPageRoute(
                  builder: (dataContext) => LoginVC(), fullscreenDialog: true));
        } else {
          Navigator.push(
              dataContext,
              MaterialPageRoute(
                  builder: (dataContext) => RegistrationVC(),
                  fullscreenDialog: true));
        }
      },
      textColor: Colors.white,
      color: Colors.red,
      minWidth: 200,
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  File _image;
// This funcion will helps you to pick and Image from Gallery
  _pickImageFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    // setState(() {
    //     _image = image;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          width: 200,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'asset/Images/p.png',
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(height: 20),
              customeBtn('login', context),
              SizedBox(height: 20),
              customeBtn('Register', context),
              if (_image != null)
                Image.file(_image)
              else
                Text(
                  "Click on Pick Image to select an Image",
                  style: TextStyle(fontSize: 18.0),
                ),
              RaisedButton(
                onPressed: () {
                  _pickImageFromGallery();
                  // or
                  // _pickImageFromCamera();
                  // use the variables accordingly
                },
                child: Text("Pick Image From Gallery"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  MaterialButton customeBtn(String value, BuildContext dataContext) {
    return MaterialButton(
      onPressed: () {
        if (value == 'login') {
          Navigator.push(
              dataContext,
              MaterialPageRoute(
                  builder: (dataContext) => LoginVC(), fullscreenDialog: true));
        } else {
          Navigator.push(
              dataContext,
              MaterialPageRoute(
                  builder: (dataContext) => RegistrationVC(),
                  fullscreenDialog: true));
        }
      },
      textColor: Colors.white,
      color: Colors.red,
      minWidth: 200,
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  File _image;
// This funcion will helps you to pick and Image from Gallery
  _pickImageFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          width: 200,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_image != null)
                ClipOval(
                  child: Image.file(
                    _image,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  clipBehavior: Clip.hardEdge,
                )
              else
                ClipOval(
                  child: Image.asset(
                    'asset/Images/p.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  clipBehavior: Clip.hardEdge,
                ),
              SizedBox(height: 20),
              customeBtn('login', context),
              SizedBox(height: 20),
              customeBtn('Register', context),
              RaisedButton(
                onPressed: () {
                  _pickImageFromGallery();
                  // or
                  // _pickImageFromCamera();
                  // use the variables accordingly
                },
                child: Text("Pick Image From Gallery"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
