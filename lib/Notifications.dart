import 'package:flutter/material.dart';
import 'BeHealer.dart';
import 'HomePage.dart';
import 'profile_page.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightBlueAccent[200],
          accentColor: Colors.lightBlueAccent[200],
          cursorColor: Colors.lightBlueAccent[200],
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 10,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Regular',
            ),
          )),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[200],
          title: Center(
            child: Text(
              'The Healer ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
            child: Center(
          child: Text(
            "عذراً .. لا يوجد لديك أي اشعارات حالياً",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo-Regular',
              color: Colors.grey,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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
