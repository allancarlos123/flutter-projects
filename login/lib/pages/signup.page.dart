import 'package:flutter/material.dart';
import 'package:login/models/user.dart';
import 'package:login/pages/login.page.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 205, 89, 1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Center(
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
                  Builder(
                    builder: (context) => Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your first name';
                              }
                            },
                            onSaved: (val) => setState(() => _user.email = val),
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
                            onSaved: (val) =>
                                setState(() => _user.password = val),
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            style: new TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: "Confirm password",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onSaved: (val) => setState(
                                () => _user.passwordConfirmation = val),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  ButtonTheme(
                    height: 60,
                    child: RaisedButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      color: Color.fromRGBO(248, 190, 69, 1),
                      onPressed: () => {
                        final form = _formKey.currentState;
                        print("hello world!")
                        // if (form.validate()) {
                        //   form.save();
                        //   _user.save();
                        // }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text("I already have an account"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
