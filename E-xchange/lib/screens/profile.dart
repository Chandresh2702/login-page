import 'package:flutter/material.dart';
import 'package:e_xchange/data/data_horizontal_list.dart';

class Profile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PROFILE PAGE'),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20.0),
          centerTitle: true,
          backgroundColor: Colors.purple[300],
          elevation: 10.0,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_profilePage3.jfif'),
                  fit: BoxFit.cover)),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dp.jpeg'),
                    radius: 50.0,
                    backgroundColor: Colors.transparent,
                  ),

                  Divider(height: 20.0, color: Colors.black),
                  //  for name attribute
                  Text(
                    'NAME:',
                    style: TextStyle(
                        letterSpacing: 2, fontSize: 15, color: Colors.white),
                  ),
                  Text('Aryaveer Gupta',
                      style: TextStyle(
                          fontSize: 20, letterSpacing: 2, color: Colors.white)),
                  SizedBox(height: 20),
                  // for email-id
                  Text('EMAIL-ID:',
                      style: TextStyle(
                          letterSpacing: 2, fontSize: 15, color: Colors.white)),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.purple[300],
                      ),
                      Text(
                        'Guptaryaveer@gmail.com',
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // for phone number :
                  Text('Phone Number:',
                      style: TextStyle(
                          letterSpacing: 2, fontSize: 15, color: Colors.white)),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.purple[300],
                      ),
                      Text(
                        '8655723999',
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  // for hostel room
                  SizedBox(height: 20),
                  Text(
                    'Hostel Room:',
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2, color: Colors.white),
                  ),
                  Text(
                    'H4-17',
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.white),
                  ),
                  SizedBox(height: 20),

                  Text(
                    'YOUR ITEMS FOR SALE: ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    // making a horizontal scrolling list
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 8,
                            ),
                          ),
                          child: box_format(
                            Name: 'shoe',
                            price: '1000',
                            image: 'assets/images/img1.jfif',
                          ),
                        ),
                        Container(
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 8,
                            ),
                          ),
                          child: box_format(
                            Name: 'sport shoe',
                            price: '3600',
                            image: 'assets/images/img2.jfif',
                          ),
                        ),
                        Container(
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 8,
                            ),
                          ),
                          child: box_format(
                            Name: 'lofers',
                            price: '5000',
                            image: 'assets/images/img3.jfif',
                          ),
                        ),
                        Container(
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 8,
                            ),
                          ),
                          child: box_format(
                            Name: 'kghk',
                            price: '500',
                            image: 'assets/images/image10.jpg',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
