import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AddProblem.dart';
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
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Center(
            child: Text(
              'IPark ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(5, 50, 5, 0),
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              Column(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.devices_other),
                  iconSize: 50,
                  color: Colors.lightBlueAccent[200],
                  onPressed: () {
                    Navigator.of(context).push(
                      // With MaterialPageRoute, you can pass data between pages,
                      // but if you have a more complex app, you will quickly get lost.
                      MaterialPageRoute(
                        builder: (context) => AddProblem(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15),
                Text(
                  'صيانة الأجهزة',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.bug_report,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'عالم البرمجة',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.router,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الشبكات',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.color_lens,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الفنون',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.camera_alt,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'التصوير',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.translate,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'اللغات والترجمة',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.build,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'أعمال الخشب',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.format_paint,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الطلاء',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.edit,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'التصميم',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.movie_creation,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'صناعة الأفلام',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.book,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الكتب',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.airplanemode_active,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'احجز لي ',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.kitchen,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الأجهزة المنزلية',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.local_car_wash,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'السيارات',
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.more_horiz,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'مشاكل أخرى؟',
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
          selectedItemColor: Color(0xFFfebf01),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(250, 232, 234, 235),
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
