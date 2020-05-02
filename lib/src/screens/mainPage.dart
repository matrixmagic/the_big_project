import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFFEFEFE),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.transform),
                color: Colors.black,
              )
            ],
            centerTitle: true,
            title: Text(
              'Flutter Ui',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
          drawer: Drawer(
              child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 90.0, top: 14.0),
                      width: 120.0,
                      height: 120.0,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60.0)),
                        child: Image.asset('assets/images/userimg.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, top: 8.0),
                      child: Container(
                        margin: EdgeInsets.only(right: 90.0, top: 14.0),
                        child: Text(
                          'Mohannndov',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFF3A5160),
                    )
                  ]),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ]))),
    );
  }
}
