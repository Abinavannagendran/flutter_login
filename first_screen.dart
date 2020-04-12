import 'package:flutter/material.dart';
import 'package:loginapp/auth.dart';
import 'package:loginapp/new_page.dart';
import 'login_app.dart';
import 'root_page.dart';


class FirstScreen extends StatelessWidget {

  /*Widget buildbutton(){
    children: <Widget>[

    new RaisedButton(
      color: Colors.yellowAccent,
      child: Text('Smart Home'),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
          return new RootPage(auth: new Auth());
        }));
      },
    ),

    ]
  }
  */
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center (
       /* children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image.png"), 
                fit: BoxFit.cover,
              ),
            ),      
          ),
        ],*/
        /*new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image.png"), 
            fit: BoxFit.cover,
          ),
        ),*/
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
                  color: Colors.yellowAccent,
              child: Text('Smart Home'),
              onPressed: () {
               // Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
                  return new RootPage(auth: new Auth());
               // }));
              },
            ),
            new RaisedButton(
              color: Colors.lightGreenAccent,
              child: Text('Community grid'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
                  return new RootPage(auth: new Auth());
                }));
              },
            ),
          ],
        )
      ),
    );
  }
}
