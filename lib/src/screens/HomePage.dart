import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  bool multi;
  List<String> imagelist = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg"
  ];
  HomePage(this.multi);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      crossAxisCount: multi ? 2 : 1,
      children: List.generate(3, (index) {
        return Container(
          child: Card(
            child: Image.asset(imagelist[index]),
          ),
        );
      }),
    ));
  }
}
