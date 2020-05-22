import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'FilterPage.dart';

import 'package:thebigproject/src/screens/FilterPage.dart';

class HotelPage extends StatefulWidget {
  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.favorite_border,
            color: Colors.grey,
          )),
          IconButton(icon: Icon(Icons.location_on, color: Colors.grey)),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                height: 400,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverPersistentHeader(
                      pinned: false,
                      delegate: MyDynamicHeader2(),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: MyDynamicHeader(),
                    ),
                    SliverList(delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 200,
                          color: Color(Random().nextInt(0xffffffff)),
                        );
                      },
                    ))
                  ],
                ))
          ],
        ),
        color: Colors.white30,
      ),
    );
  }
}

class MyDynamicHeader2 extends SliverPersistentHeaderDelegate {
  int index = 0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      final Color color = Colors.primaries[index];
      final double percentage =
          (constraints.maxHeight - minExtent) / (maxExtent - minExtent);

      if (++index > Colors.primaries.length - 1) index = 0;

      return Container(
        height: constraints.maxHeight,
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 60.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Location',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)))),
                        ),
                      ),
                      Positioned(
                        right: -1,
                        top: -1,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(60.0)),
                          child: Container(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            width: 59.0,
                            height: 59.0,
                            color: Color(0xFF55DDCC),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Material(
                          child: InkWell(
                              splashColor: Colors.grey.withOpacity(0.2),
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'choose date',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('21-may',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.3),
                        width: 1,
                        height: 42,
                      ),
                      Expanded(
                        child: Material(
                          child: InkWell(
                              splashColor: Colors.grey.withOpacity(0.2),
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'choose date',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('21-may',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 180.0;

  @override
  double get minExtent => 160.0;
}

class MyDynamicHeader extends SliverPersistentHeaderDelegate {
  int index = 0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      final Color color = Colors.primaries[index];
      final double percentage =
          (constraints.maxHeight - minExtent) / (maxExtent - minExtent);

      if (++index > Colors.primaries.length - 1) index = 0;

      return Container(
        color: Colors.white,
        height: constraints.maxHeight,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Text('490 hotel found '),
              )),
              Expanded(
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => filterpage()));
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'filter',
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Icon(Icons.videocam)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 150.0;

  @override
  double get minExtent => 80.0;
}
