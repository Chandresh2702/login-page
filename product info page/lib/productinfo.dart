import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  ProductInfo();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: TextButton(
            child: const Icon(Icons.arrow_back),
            style: TextButton.styleFrom(
              primary: Colors.purpleAccent[100],
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Product Name")),
      body: Center(
        child: ListView(
          children: [
            Container(
              color: Colors.deepPurple,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 400,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                itemCount: 5,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Center(
                      child: Text("image " + itemIndex.toString()),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting "
                      "industry. Lorem Ipsum has been the industry's standard dummy text "
                      "ever since the 1500s, when an unknown printer took a galley of type "
                      "and scrambled it to make a type specimen book. It has survived not "
                      "only five centuries, but also the leap into electronic typesetting"
                      ", remaining essentially unchanged. It was popularised in the 1960s "
                      "with the release of Letraset sheets containing Lorem Ipsum passages,"
                      " and more recently with desktop publishing software like Aldus"
                      " PageMaker including versions of Lorem Ipsum "),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Posted by : Mahendra Aanjna",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.add_call,
              color: Colors.purpleAccent,
            )
          ],
        ),
      ),
    );
  }
}