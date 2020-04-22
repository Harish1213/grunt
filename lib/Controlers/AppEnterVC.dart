import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grunt/Controlers/RegistrationVC.dart';
import 'package:grunt/Controlers/loginVC.dart';

class AppEnterVC extends StatelessWidget {
  MaterialButton customeBtn(String value,BuildContext dataContext) {
    return MaterialButton(
      onPressed: (){
        if (value == 'login')
         {
        Navigator.push(
            dataContext, 
            MaterialPageRoute(
              builder: (dataContext) => LoginVC() ,
          fullscreenDialog:true)
          );
        }else{
          Navigator.push(
            dataContext, 
            MaterialPageRoute(
              builder: (dataContext) => RegistrationVC() ,
          fullscreenDialog:true)
          );

        }
      },
      
      textColor: Colors.white,
      color: Colors.red,
      minWidth: 200,
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.all(Radius.circular(10)),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          
          width: 200,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child:Image.asset(
                'asset/Images/p.png',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
                
                
              ),
              clipBehavior: Clip.hardEdge,
              ),
              
              SizedBox(height: 20),
              customeBtn('login',context),
              SizedBox(height: 20),
              customeBtn('Register',context)
            ],
          ),
        ),
      ),
    );
  }
}
