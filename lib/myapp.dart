import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 100.0),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/fck.jpg'),
                          ),
                        )),
                    Container(
                        width: 230.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/dog.jpg'),
                          ),
                        )),
                    // CircleAvatar(
                    //   radius: 120.0,
                    //   backgroundImage: AssetImage('images/dog.jpg'),
                    // ),
                  ],
                ),
                SizedBox(height: 35.0),
                Center(
                  child: Text(
                    'Healthy and Happy Pets',
                    style: TextStyle(
                      fontFamily: 'SourceSans',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 45.0),
                Center(
                  child: Text(
                    'the best solution for pet\'s needs',
                    style: TextStyle(
                      fontFamily: 'SourceSans',
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Center(
                    child: Text(
                  'for mental and physical health',
                  style: TextStyle(
                    fontFamily: 'SourceSans',
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                )),
                SizedBox(height: 80.0),
                Material(
                  elevation: 5.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50.0),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 150.0,
                    height: 50.0,
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'SourceSans'),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontFamily: 'SourceSans',
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      " Sign up",
                      style: TextStyle(
                        fontFamily: 'SourceSans',
                        fontSize: 18.0,
                        color: Colors.red,
                      ),
                    ),
                    // SizedBox(height: 30.0),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
