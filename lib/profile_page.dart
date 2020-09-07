import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Edit_page.dart';
import 'about_page.dart';
import 'balance_page.dart';
import 'dialogs.dart';
import 'chat_page.dart';
import 'Notifications.dart';
import 'HomePage.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blueGrey,
          accentColor: Colors.blueGrey,
          cursorColor: Colors.blueGrey,
          fontFamily: 'Cairo-Regular',
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 10,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Regular',
            ),
          )),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFFB0BEC5),
                  Color(0xFF455a64),
                ])),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white60, width: 2.0),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://ak6.picdn.net/shutterstock/videos/9175346/thumb/1.jpg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Raghad",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cairo-Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "@1419_Raghad",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.white54,
                        fontFamily: 'Cairo-Regular',
                      ),
                    ),
                    SizedBox(height: 2.0),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Edit(),
                          ),
                        );
                      },
                      color: Colors.black87,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(1.4, -1.1),
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.blueGrey[200],
                    ),
                    color: Colors.white,
                    onPressed: () async {
                      final action = await Dialogs.yesAbortDialog(context,
                          'Raghad ', "Are you Sure that you want sign out ?");
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320.0),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 350.0, left: 250, right: 50),
                child: Column(children: <Widget>[
                  Icon(
                    Icons.content_paste,
                    size: 60,
                    color: Colors.blueGrey[300],
                  ),
                  FlatButton(
                    child: Text(
                      'My Tickets',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                  ),
                  Icon(
                    Icons.help_outline,
                    size: 60,
                    color: Colors.blueGrey[300],
                  ),
                  FlatButton(
                    child: Text(
                      'About IPark',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => about(),
                        ),
                      );
                    },
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 350.0,
                  left: 70,
                  right: 30,
                ),
                child: Column(children: <Widget>[
                  Icon(
                    Icons.attach_money,
                    size: 60,
                    color: Colors.blueGrey[300],
                  ),
                  FlatButton(
                    child: Text(
                      'My Balance',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => balance(),
                        ),
                      );
                    },
                  ),
                  Icon(
                    Icons.chat,
                    size: 60,
                    color: Colors.blueGrey[300],
                  ),
                  FlatButton(
                    child: Text(
                      'Inbox',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => chat(),
                        ),
                      );
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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
                icon: Icon(
                  Icons.person,
                ),
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
