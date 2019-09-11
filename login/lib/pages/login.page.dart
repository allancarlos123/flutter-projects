import 'package:flutter/material.dart';
import 'package:login/pages/signup.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(248, 190, 69, 1),
      backgroundColor: Color.fromRGBO(241, 205, 89, 1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("assets/images/logo.png"),
              ),
              Padding(
                // padding: EdgeInsets.all(50),
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 30),
                child: Text.rich(
                  TextSpan(
                    text:
                        "Access to exclusive offers, coupons and deals! Let's drink paying low prices.",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60,
                child: RaisedButton(
                    onPressed: () => {},
                    child: Text("Sign In",
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                    color: Color.fromRGBO(248, 190, 69, 1)),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                child: Text("Don't have an account? Register"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
