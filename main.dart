import 'package:flutter/material.dart';
import 'package:loginapp/auth.dart';
import 'package:loginapp/new_page.dart';
import 'login_app.dart';
import 'root_page.dart';
import 'first_screen.dart';

void main() { 
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
    Widget build(BuildContext context) {

      return new MaterialApp(
        title: 'Micro Grid ',
        theme: new ThemeData (
          primarySwatch: Colors.lime,
        ),
        home: new FirstScreen(),
        //home: new RootPage(auth: new Auth())
       /* new RaisedButton (
          child:const Text('Smart home'),
          color: Theme.of(context).accentColor,
          elevation: 4.0,
          splashColor: Colors.blueGrey,
          onPressed: () {
            home: new RootPage(auth: new Auth()),  

          },
        ),*/
        
        /*routes: <String, WidgetBuilder>{
          "/a": (BuildContext context)=> new NewPage("New Page"),
        },*/
      );
    }
}
