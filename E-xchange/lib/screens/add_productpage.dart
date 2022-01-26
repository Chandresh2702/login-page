import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                  child: Text(
                    'Add product',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      letterSpacing: 2.0,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 80, right: 20),
            child: Column(children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
              SizedBox(height: 14),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'product Description',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ]),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(left: 30, top: 300, right: 20, bottom: 30),
            child: Row(

              children: <Widget>[

                SizedBox(width: 0),
                Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    letterSpacing: 2.0,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(width: 225),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.greenAccent,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.blueAccent,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}