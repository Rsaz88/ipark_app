import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Notifications.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blueGrey[400],
          accentColor: Colors.blueGrey[400],
          cursorColor: Colors.blueGrey[400],
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 10,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          )),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'IPark ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(5, 60, 5, 30),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Column(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.collections_bookmark),
                  iconSize: 50,
                  color: Colors.blueGrey[200],
                  onPressed: () {
                    Navigator.of(context).push(
                      // With MaterialPageRoute, you can pass data between pages,
                      // but if you have a more complex app, you will quickly get lost.
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15),
                Text(
                  'Make Reservation',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.attach_money,
                  size: 50,
                  color: Colors.blueGrey[200],
                ),
                SizedBox(height: 30),
                Text(
                  'Buy Tickets',
                  textAlign: TextAlign.center,
                ),
              ]),
            ], //gridview related
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          iconSize: 20,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedItemColor: Colors.white70,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(250, 163, 186, 194),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Notify(),
                    ),
                  );
                },
              ),
              title: Text(
                'Notifications',
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
              ),
              title: Text(
                'MyProfile',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
