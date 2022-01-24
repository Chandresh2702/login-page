import 'package:flutter/material.dart';

class box_format extends StatefulWidget {
  final String price;
  final String Name;
  final String image;
  const box_format(
      {required this.price, required this.Name, required this.image});
  @override
  _box_formatState createState() => _box_formatState();
}

class _box_formatState extends State<box_format> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image(
          image: AssetImage(widget.image),
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
          Text(widget.Name),
          SizedBox(
            width: 80,
          ),
          Text(widget.price)
        ]),
      ],
    );
  }
}
