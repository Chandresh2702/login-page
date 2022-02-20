import 'package:e_xchange/screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'login.dart';
// import 'screens/home.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD

      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
=======
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
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
>>>>>>> e28d53971596ea0e6de348807f45ac6ed3ddf356
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
<<<<<<< HEAD
                  Text("Sign up",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Rancho',
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,

                  ),),
                  SizedBox(height: 20,),
                  Text("Create an account",
                    style: TextStyle(
                        fontFamily: 'Rancho',
                        fontSize: 18,
                        color:Colors.grey),)


=======
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account",
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  )
>>>>>>> e28d53971596ea0e6de348807f45ac6ed3ddf356
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Roll number"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password ", obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  // minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  color: Colors.amber,
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
<<<<<<< HEAD
                  
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontFamily: 'Rancho',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                    
=======
>>>>>>> e28d53971596ea0e6de348807f45ac6ed3ddf356

                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
<<<<<<< HEAD
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?",
                    style: TextStyle(

                    color: Colors.grey,
                  ),),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Rancho',
                          color: Colors.amber,

                          fontWeight: FontWeight.w600,
                        fontSize: 15
=======
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
>>>>>>> e28d53971596ea0e6de348807f45ac6ed3ddf356
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
<<<<<<< HEAD
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w400,
        ),

=======
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
>>>>>>> e28d53971596ea0e6de348807f45ac6ed3ddf356
      ),
      SizedBox(
        height: 1,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 7),
            enabledBorder: OutlineInputBorder(
<<<<<<< HEAD
              borderSide: BorderSide(
                  color: Colors.amber
              ),

=======
              borderSide: BorderSide(color: Colors.grey),
>>>>>>> e28d53971596ea0e6de348807f45ac6ed3ddf356
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 7,
      )
    ],
  );
}
