//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/auth.dart';
import 'package:loginapp/new_page.dart';
import 'auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key, this.user.uid}): super (key: key);
  HomePage({this.auth, this.onSignedOut});

  final BaseAuth auth;
  final VoidCallback onSignedOut; 
//  final FirebaseUser user;
  


  void _signOut() async {
    try{
      await auth.signOut();
      onSignedOut();
    } catch(e) {
      print(e);
    }   
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Smart HOME'),    
        actions: <Widget>[ //Specify widget on right side of appBar
          new FlatButton(            
            child: new Text('Logout', style: new TextStyle(fontSize: 17.0, color: Colors.black)),
            onPressed: _signOut
          )
        ],
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0 ,   
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Smart_Home"),
              accountEmail: new Text("abinavan002@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("S")
              ),
             
            ),
            new ListTile(
              title: new Text("History"),
              trailing: new Icon (Icons.arrow_upward),
              onTap: () {
                Navigator. of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => 
                    new NewPage("History")));
               
              },
            
            ),
            new ListTile(
              title: new Text("Power of the Load"),
              trailing: new Icon (Icons.arrow_upward),
              onTap: () {
                Navigator. of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => 
                    new NewPage("Power of the Load")));
               
              },
            ),
            new ListTile(
              title: new Text("Smart metering"),
              trailing: new Icon (Icons.arrow_upward),
              onTap: () {
                Navigator. of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => 
                    new NewPage("Smart metering")));
               
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon (Icons.close),
              onTap: ()=> Navigator. of(context).pop(),
            ),
           
          ],
        ),
      ),  
      body:  new Container(
        child: new Center(
          child: new Text("HomePage"), 
      ),
      ),
/*      body: StreamBuilder(
        stream: Firestore.instance.collection('house1').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData) return Text('Loading data.. Please Wait..');
          return Column(
            children: <Widget>[
              Text(snapshot.data.documents[0]['name']),
              Text(snapshot.data.documents[0]['power'].toString())            

            ],
          );

        },
      )*/
/*      body: StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance.collection('users').document(user.uid).snapshots(),
        builder:(BuildContext context, AsyncSnapshot<DocumentSnapshot>snapshot)
        {
          if(snapshot.hasError){
            return Text('Error: ${snapshot.error}');
          }
          switch(snapshot.connectionState){
            case ConnectionState.waiting: return Text('Loading....');
            default:
              return Text(snapshot.data['name']);
          }
         
        },
      ),*/

//      body: new Container(
//        child: new Center(
//          child: new Text('Welcome page of MicroGrid System', style: new TextStyle(fontSize: 20.0))
//        ),
//      )
    );
  }
}

