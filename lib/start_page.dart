import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';

class StartPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(
          "Sign Up  ",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Cairo-Regular',
            color: Colors.blueGrey[200],
            fontSize: 15,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 200, left: 40, right: 40),
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFF80D8FF),
                    Color(0xFF00B0FF),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "دخول",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Cairo-Regular',
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: OutlineButton(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.lightBlueAccent,
                ),
                child: Text(
                  "تسجيل",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                    color: Colors.black54,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
