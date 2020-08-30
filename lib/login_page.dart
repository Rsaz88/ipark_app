import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reset_password_page.dart';
import 'start_page.dart';
import 'HomePage.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[200],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartPage(),
                ),
              );
            }),
        title: Text(
          'ادخل إلى حسابك',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Cairo-Regular',
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/images/login.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "البريد الإلكتروني",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 15,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "كلمة المرور",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 15,
                  )),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "هل نسيت كلمة المرور؟",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPge(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
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
                        child: SizedBox(
                          width: 30,
                          child: Image.asset("assets/images/right.png"),
                        ),
                      ),
                      Text(
                        "دخول",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Cairo-Regular',
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
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
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFF0091EA),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          width: 25,
                          child: Image.asset("assets/images/Twitter.png"),
                        ),
                      ),
                      Text(
                        "الدخول عن طريق حسابك في تويتر",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Cairo-Regular',
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
