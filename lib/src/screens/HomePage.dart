import 'package:flutter/material.dart';
import 'package:thebigproject/src/screens/HotelPage.dart';

class HomePage extends StatefulWidget {
  bool multi;

  HomePage(this.multi);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> animation2;
  Animation<double> animation3;
  Animation<double> animation4;
  Animation<double> animation5;
  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    animation2 = Tween<double>(begin: 0, end: 1).animate(controller);
    animation3 = new Tween(begin: 600.0, end: 0.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.0,
          0.33,
          curve: Curves.linear,
        ),
      ),
    );
    animation4 = new Tween(begin: 600.0, end: 0.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.34,
          0.66,
          curve: Curves.linear,
        ),
      ),
    );
    animation5 = new Tween(begin: 600.0, end: 0.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.67,
          1.0,
          curve: Curves.linear,
        ),
      ),
    );

    controller.forward();
  }

  List<String> imagelist = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      crossAxisCount: widget.multi ? 2 : 1,
      children: List.generate(3, (index) {
        if (index == 0) {
          return AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return Transform.translate(
                  offset: Offset(0.0, animation3.value),
                  child: Container(
                    child: Card(
                      child: Image.asset(imagelist[index]),
                    ),
                  ),
                );
              });
        } else if (index == 1) {
          return AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return Transform.translate(
                  offset: Offset(0.0, animation4.value),
                  child: Container(
                    child: Card(
                      child: Image.asset(imagelist[index]),
                    ),
                  ),
                );
              });
        } else {
          return AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return Transform.translate(
                  offset: Offset(0.0, animation5.value),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HotelPage()),
                      );
                    },
                    child: Container(
                      child: Card(
                        child: Image.asset(imagelist[index]),
                      ),
                    ),
                  ),
                );
              });
        }
      }),
    ));
  }
}
