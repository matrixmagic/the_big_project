import 'package:flutter/material.dart';
import 'package:thebigproject/src/screens/HomePage.dart';
import 'HelpPage.dart';

class mainPage extends StatefulWidget {
  int selected_index = 0;
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage>
    with SingleTickerProviderStateMixin {
  Animation<Color> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = Tween<Color>(begin: Colors.white, end: Colors.blueAccent)
        .animate(controller);
    FutureBuilder(builder: ,)

  }

  List<Icon> navbaricons = [
    Icon(Icons.home),
    Icon(Icons.help),
    Icon(Icons.group),
    Icon(Icons.share)
  ];

  List<String> leftNav = ["Home", "help", "feedback", "invite friend"];
  GlobalKey _drawerkey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  bool multi = true;


  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            key: _drawerKey,
            backgroundColor: Color(0xFFFEFEFE),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.transform),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      multi = !multi;
                    });
                  },
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
                  /* ListTile(
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

                */
                  Container(
                    height: double.maxFinite,
                    child: ListView.builder(
                      itemCount: leftNav.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimatedBuilder(
                          animation: controller,
                          builder: (BuildContext context, Widget child) {
                            return Container(
                              margin: EdgeInsets.only(right: 50.0),
                              decoration: BoxDecoration(
                                  color: widget.selected_index == index
                                      ? Colors.blueAccent.withOpacity(0.3)
                                      : Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(40.0),
                                      topRight: Radius.circular((40)))),
                              child: child,
                            );
                          },
                          child: ListTile(
                            title: Text(leftNav[index]),
                            leading: Icon(navbaricons[index].icon,
                                color: widget.selected_index == index
                                    ? Colors.blueAccent
                                    : Colors.black87),
                            onTap: () {
                              setState(() {
                                widget.selected_index = index;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  )
                ])),
            body: transfer()));
  }

  transfer() {
    if (_drawerKey.currentState?.isDrawerOpen == true) {
      print('the drawer is open');
    }
    print(_drawerKey.currentState?.isDrawerOpen);

    switch (widget.selected_index) {
      case 0:
        return HomePage(multi);
        break;
      case 1:
        return HelpPage();
        break;
      default:
        return HelpPage();
        break;
    }
  }
}
