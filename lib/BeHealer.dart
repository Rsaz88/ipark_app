import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/gestures.dart';
import 'HomePage.dart';
import 'Notifications.dart';
import 'profile_page.dart';

class BeHealer extends StatefulWidget {
  @override
  _BeHealerState createState() => _BeHealerState();
}

class _BeHealerState extends State<BeHealer> {
  List<DropdownMenuItem<String>> listDrop = [];
  String selected;
  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('صيانة الأجهزة'),
      value: 'V 1',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('عالم البرمجة '),
      value: 'V 2',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('الشبكات'),
      value: 'V 3',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('التصميم'),
      value: 'V 4',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('الطلاء'),
      value: 'V 5',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('أعمال الخشب'),
      value: 'V 6',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('الحجوزات'),
      value: 'V 7',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('الكتب'),
      value: 'V 8',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('صناعة الافلام'),
      value: 'V 9',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('مشاكل السيارات والقيادة'),
      value: 'V 10',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('الأجهزة المنزلية'),
      value: 'V 11',
    ));

    listDrop.add(new DropdownMenuItem(
      child: new Text('مجال آخر'),
      value: 'V 12',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
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
        appBar: AppBar(
          title: Center(
            child: Text(
              'The Healer ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 60,
                height: 60,
                child: Image.asset("assets/images/login.png"),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "ادخل نبذة بسيطة عنك لاستعراض مهاراتك",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: new DropdownButton(
                    value: selected,
                    items: listDrop,
                    hint: new Text('اختر مجالك'),
                    onChanged: (value) {
                      selected = value;
                      setState(() {});
                    }),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Color(0xFF9CD8F1),
                        Color(0xFF00B0FF),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: SizedBox(
                              width: 30,
                              child: Image.asset("assets/images/right.png"),
                            ),
                          ),
                        ),
                        Text(
                          "تأكيد تسجيلي كمُعالج ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Cairo-Regular',
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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
