

///BASIC LIST
/*

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Basic List Demo';  
  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: ListView(  
          children: <Widget>[  
            ListTile(  
              leading: Icon(Icons.map),  
              title: Text('Map'),  
            ),  
            ListTile(  
              leading: Icon(Icons.photo_album),  
              title: Text('Album'),  
            ),  
            ListTile(  
              leading: Icon(Icons.phone),  
              title: Text('Phone'),  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts),  
              title: Text('Contact'),  
            ),  
            ListTile(  
              leading: Icon(Icons.settings),  
              title: Text('Setting'),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}  
*/ 

//LONG LIST

/*
class MyApp extends StatelessWidget {  
  final List<String> products;  
  
  MyApp({Key key, @required this.products}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Long List Demo';  
  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: ListView.builder(  
          itemCount: products.length,  
          itemBuilder: (context, index) {  
            return ListTile(  
              title: Text('${products[index]}'),  
            );  
          },  
        ),  
      ),  
    );  
  }  
}  

 */

//GRIDE LIST

/*
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = "Flutter Grid List Demo";  
  
    return MaterialApp(  
        title: appTitle,  
        home: Scaffold(appBar: AppBar(  
          title: Text(appTitle),  
        ),  
            body: GridView.count(  
                crossAxisCount: 3,  
                children: List.generate(choices.length, (index) {  
                  return Center(  
                    child: SelectCard(choice: choices[index]),  
                  );  
                }  
                )  
            )  
        )  
    );  
  }  
}  
  
class Choice {  
  const Choice({this.title, this.icon});  
  final String title;  
  final IconData icon;  
}  
  
const List<Choice> choices = const <Choice>[  
  const Choice(title: 'Home', icon: Icons.home),  
  const Choice(title: 'Contact', icon: Icons.contacts),  
  const Choice(title: 'Map', icon: Icons.map),  
  const Choice(title: 'Phone', icon: Icons.phone),  
  const Choice(title: 'Camera', icon: Icons.camera_alt),  
  const Choice(title: 'Setting', icon: Icons.settings),  
  const Choice(title: 'Album', icon: Icons.photo_album),  
  const Choice(title: 'WiFi', icon: Icons.wifi),  
  const Choice(title: 'GPS', icon: Icons.gps_fixed),  
];  
  
class SelectCard extends StatelessWidget {  
  const SelectCard({Key key, this.choice}) : super(key: key);  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  
    final TextStyle textStyle = Theme.of(context).textTheme.display1;  
    return Card(  
        color: Colors.lightGreenAccent,  
        child: Center(child: Column(  
            mainAxisSize: MainAxisSize.min,  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: <Widget>[  
              Expanded(child: Icon(choice.icon, size:50.0, color: textStyle.color)),  
              Text(choice.title, style: textStyle),  
            ]  
        ),  
        )  
    );  
  }  
}  
 */

///HORIZONTAL LIST
/*

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final title = 'Flutter Horizontal Demo List';  
  
    return MaterialApp(  
      title: title,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(title),  
        ),  
        body: Container(  
          margin: EdgeInsets.symmetric(vertical: 25.0),  
          height: 150.0,  
          child: ListView(  
            scrollDirection: Axis.horizontal,  
            children: <Widget>[  
              Container(  
                width: 150.0,  
                color: Colors.blue,  
                child: new Stack(  
                  children: <Widget>[  
                    ListTile(  
                      leading: Icon(Icons.home),  
                      title: Text('Home'),  
                    ),  
                  ],  
                ),  
              ),  
              Container(  
                width: 148.0,  
                color: Colors.green,  
                child: new Stack(  
                  children: <Widget>[  
                    ListTile(  
                      leading: Icon(Icons.camera_alt),  
                      title: Text('Camera'),  
                    ),  
                  ],  
                ),  
              ),  
              Container(  
                width: 148.0,  
                color: Colors.yellow,  
                child: new Stack(  
                  children: <Widget>[  
                    ListTile(  
                      leading: Icon(Icons.phone),  
                      title: Text('Phone'),  
                    ),  
                  ],  
                ),  
              ),  
              Container(  
                width: 148.0,  
                color: Colors.red,  
                child: new Stack(  
                  children: <Widget>[  
                    ListTile(  
                      leading: Icon(Icons.map),  
                      title: Text('Map'),  
                    ),  
                  ],  
                ),  
              ),  
              Container(  
                width: 148.0,  
                color: Colors.orange,  
                child: new Stack(  
                  children: <Widget>[  
                    ListTile(  
                      leading: Icon(Icons.settings),  
                      title: Text('Setting'),  
                    ),  
                  ],  
                ),  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  
 */