import 'package:flutter/material.dart';

class filterpage extends StatefulWidget {
  @override
  _filterpageState createState() => _filterpageState();
}

class _filterpageState extends State<filterpage> {
  double vali = 0;
  bool checkboxvalue = false;
  bool checkboxvalue2 = false;
  bool checkboxvalue1 = false;
  RangeValues _values = RangeValues(0.3, 0.7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Filters',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              'bla bla bla',
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
            ),
            RangeSlider(
              min: 0,
              max: 100,
              values: _values,
              onChanged: (RangeValues values) {
                setState(() {
                  _values = values;
                });
              },
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'public filter',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 22),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  tristate: true,
                  value: checkboxvalue2,
                  onChanged: (bool newValue) {
                    setState(() {
                      checkboxvalue2 = newValue;
                    });
                  },
                ),
                Text(
                  'free breakfast',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Checkbox(
                  tristate: true,
                  value: checkboxvalue2,
                  onChanged: (bool newValue) {
                    setState(() {
                      checkboxvalue2 = newValue;
                    });
                  },
                ),
                Text(
                  'free parking',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  tristate: true,
                  value: checkboxvalue2,
                  onChanged: (bool newValue) {
                    setState(() {
                      checkboxvalue2 = newValue;
                    });
                  },
                ),
                Text(
                  'pool',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Checkbox(
                  tristate: true,
                  value: checkboxvalue2,
                  onChanged: (bool newValue) {
                    setState(() {
                      checkboxvalue2 = newValue;
                    });
                  },
                ),
                Text(
                  'pet friendly',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    tristate: true,
                    value: checkboxvalue2,
                    onChanged: (bool newValue) {
                      setState(() {
                        checkboxvalue2 = newValue;
                      });
                    },
                  ),
                ),
                Text(
                  'free wifi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 200.0,
            ),
            Divider(
              height: 2.0,
              thickness: 2,
              color: Colors.black12,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'distance from city center',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Slider(
                value: vali,
                label: "hi",
                activeColor: Colors.red,
                onChanged: (double val) {
                  setState(() {
                    return vali = val;
                  });
                },
                min: 0,
                max: 100,
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 2,
              color: Colors.black12,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'type of accommodation',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(33),
              child: Row(
                children: <Widget>[
                  Text('ALL'),
                  SizedBox(
                    width: 80,
                  ),
                  Transform.scale(
                    scale: 1.5,
                    child: Switch(
                      activeColor: Colors.blue,
                      value: false,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('hiii'),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: Text(
            'apply',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          isExtended: true,
        ),
      ),
    );
  }
}
