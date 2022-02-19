import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'package:e_xchange/screens/Dashboard.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({ Key? key }) : super(key: key);

  @override
  _Forgot_passwordState createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Text(
                'Get your password',
                style: TextStyle(
                  fontFamily: 'Rancho',
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
             Container(
              width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                'Enter the email address associated with your account and we will send you an OTP.',
                style: TextStyle(
                  fontFamily: 'Rancho',
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.blue)
                                ),
                                      focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color:Colors.blue)
                                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Rancho',
                        color: Colors.grey)),
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              // defining the shape
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),

              child: Text(
                "Get OTP",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Rancho',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            const Divider(
              color: Colors.white,
              height: 25,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.blue)
                                ),
                                      focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color:Colors.blue)
                                    ),
                    labelText: 'Enter the OTP recieved on your provided email id',
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Rancho',
                        color: Colors.grey)),
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              // defining the shape
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),

              child: Text(
                "Verify OTP",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Rancho',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            const Divider(
              color: Colors.white,
              height: 25,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Text(
                'And Hurray! , Here is your Password',
                style: TextStyle(
                  fontFamily: 'Rancho',
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

