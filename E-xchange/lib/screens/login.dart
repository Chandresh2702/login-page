import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:e_xchange/screens/Dashboard.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                        child: Text(
                          'WELCOME TO',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            color: Colors.amber,
                            letterSpacing: 2.0,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 95, 0, 0),
                        child: Text(
                          'E-XCHANGE',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            color: Colors.amber,
                            letterSpacing: 2.0,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 55, right: 20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                                fontFamily: 'Rancho',
                                fontWeight: FontWeight.bold,
                                color: Colors.amber)),
                      ),
                      SizedBox(height: 14),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                                fontFamily: 'Rancho',
                                fontWeight: FontWeight.bold,
                                color: Colors.amber)),
                        obscureText: true,
                      ),
                      Container(
                        alignment: Alignment(1, 0),
                        padding: EdgeInsets.only(top: 20.0),
                        child: InkWell(
                          child: Text(
                            'Forgort Password',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Rancho",
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 0),
                            Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Colors.amber,
                                fontFamily: 'Rancho',
                                letterSpacing: 2.0,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 145),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Colors.amber,
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DashBoard()));
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                  child: Text(
                    'New to E-xchange ?',
                    style: TextStyle(
                      fontFamily: 'Rancho',
                      color: Colors.amber,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                SizedBox(width: 0.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontFamily: 'Rancho',
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            )));
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
