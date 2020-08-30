import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Edit_page.dart';
import 'about_page.dart';
import 'balance_page.dart';
import 'dialogs.dart';
import 'problem_page.dart';
import 'chat_page.dart';
import 'BeHealer.dart';
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
          primaryColor: Colors.lightBlueAccent[200],
          accentColor: Colors.lightBlueAccent[200],
          cursorColor: Colors.lightBlueAccent[200],
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
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFF80D8FF),
                  Color(0xFF00B0FF),
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
                      "نورة سعد",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cairo-Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "@1419_Nourah",
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
                        "الإعدادات",
                        style: TextStyle(
                          fontFamily: 'Cairo-Regular',
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
                    icon: Icon(Icons.exit_to_app),
                    color: Colors.white,
                    onPressed: () async {
                      final action = await Dialogs.yesAbortDialog(context,
                          'نورة سعد', "هل انت متأكد من رغبتك في تسجيل الخروج؟");
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320.0),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    color: Colors.black12,
                  ),
                  FlatButton(
                    child: Text(
                      'مشكلاتي',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                        fontFamily: 'Cairo-Regular',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(),
                        ),
                      );
                    },
                  ),
                  Icon(
                    Icons.help_outline,
                    size: 60,
                    color: Colors.black12,
                  ),
                  FlatButton(
                    child: Text(
                      'من نحن',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                        fontFamily: 'Cairo-Regular',
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
                    color: Colors.black12,
                  ),
                  FlatButton(
                    child: Text(
                      'رصيدي',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                        fontFamily: 'Cairo-Regular',
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
                    color: Colors.black12,
                  ),
                  FlatButton(
                    child: Text(
                      'الرسائل',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                        fontFamily: 'Cairo-Regular',
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
          currentIndex: 3,
          iconSize: 20,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedItemColor: Color(0xFFfebf01),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(250, 232, 234, 235),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.report_problem),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              title: Text(
                'لدي مشكلة',
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.pan_tool),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BeHealer(),
                    ),
                  );
                },
              ),
              title: Text(
                'أستطيع المساعدة',
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
                'التنبيهات',
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
                'حسابي',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
