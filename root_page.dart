
import 'package:flutter/material.dart';
//import 'package:loginapp/home_page.dart';
import 'login_app.dart';
import 'auth.dart';
import 'home_page.dart';

class RootPage extends StatefulWidget {
  RootPage ({this.auth});
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus {
  notSignedIn,
  signedIn,
}
class _RootPageState extends State<RootPage> {
  
  AuthStatus authStatus = AuthStatus.notSignedIn;

  
  initState() { ///called every time the stateless widget is created
    super.initState();
    widget.auth.currentUser().then((userId){
      setState(() {
        authStatus = userId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;        
      });
    });
  }

  void _signedIn() { ///parameters to call signedIn
    setState(() {
      authStatus = AuthStatus.signedIn;      
    });
  }


  void _signedOut() { ///parameters to call notSignedIn
    setState(() {
      authStatus = AuthStatus.notSignedIn;      
      
    });
  }


  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginPage(
          auth: widget.auth,
          onSignedIn: _signedIn,
        );
      case AuthStatus.signedIn:
        return new HomePage(
          auth: widget.auth,
          onSignedOut: _signedOut,
        );
    }
  }
}