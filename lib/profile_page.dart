import 'package:flutter/material.dart';
import 'data_horizontal_list.dart';

class profile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE PAGE'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20.0),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 10.0,
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dp.jpeg'),
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                ),
              ),
              Divider(height: 20.0, color: Colors.black),
              //  for name attribute
              Text(
                'NAME:',
                style: TextStyle(letterSpacing: 2, fontSize: 10),
              ),
              Text('Aryaveer Gupta',
                  style: TextStyle(fontSize: 20, letterSpacing: 2)),
              SizedBox(height: 20),
              // for email-id
              Text('EMAIL-ID:',
                  style: TextStyle(letterSpacing: 2, fontSize: 10)),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.amber,
                  ),
                  Text(
                    'Guptaryaveer@gmail.com',
                    style: TextStyle(fontSize: 20, letterSpacing: 2),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // for phone number :
              Text('Phone Number:',
                  style: TextStyle(letterSpacing: 2, fontSize: 10)),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.amber,
                  ),
                  Text(
                    '8655723999',
                    style: TextStyle(fontSize: 20, letterSpacing: 2),
                  ),
                ],
              ),
              // for hostel room
              SizedBox(height: 20),
              Text(
                'Hostel Room:',
                style: TextStyle(fontSize: 10, letterSpacing: 2),
              ),
              Text(
                'H4-17',
                style: TextStyle(fontSize: 20, letterSpacing: 2),
              ),
              SizedBox(height: 20),
              Text(
                'YOUR ITEMS FOR SALE: ',
                style: TextStyle(fontSize: 15),
              ),
              Container(
                height: 150,
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                // making a horizontal scrolling list
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 8,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: const AssetImage('assets/img1.jfif'),
                            height: 60,
                            width: 60,
                          ),
                          Row(children: <Widget>[
                            Text('Product Name:'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Price:')
                          ]),
                          Row(children: <Widget>[
                            Text('shoe'),
                            SizedBox(
                              width: 80,
                            ),
                            Text('1000')
                          ]),
                        ],
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
                        image: 'assets/img2.jfif',
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
                        image: 'assets/img3.jfif',
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
                        image: 'assets/image10.jpg',
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
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
