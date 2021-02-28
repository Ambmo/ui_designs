import 'dart:ui';
import 'package:flutter/material.dart';
import 'constants.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0.0,
        // ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Everything Your', style: head),
                      Text('Pet Needs', style: head),
                    ],
                  ),
                  Icon(Icons.notifications),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  // focusColor: Colors.black,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  // prefix: Icon(
                  //   Icons.search,
                  //   color: Colors.grey,
                  // ),
                  prefixIcon: Icon(Icons.search),
                  // icon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  // ),
                  hintText: 'Find what your animal needs',
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(20.0)),
              // clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.fromLTRB(25.0, 25.0, 0.0, 0.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Be Productive About Your',
                    style: head.copyWith(fontSize: 20.0),
                  ),
                  Text(
                    "Pet's Health",
                    style: head.copyWith(fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 120.0,
                              height: 50.0,
                              child: Text(
                                'Learn More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: 'SourceSans'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.0)),
                          ),
                          height: 130.0,
                          width: 173.0,
                          child: Image.asset('images/dog.jpg')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
