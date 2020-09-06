import 'package:flutter/material.dart';
import 'start_page.dart';
import 'HomePage.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[400],
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
            "Sign UP",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo-Regular',
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20, left: 40, right: 40),
          color: Colors.black87,
          child: ListView(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                alignment: Alignment(0.0, 1.15),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("assets/images/login.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle, color: Colors.white70),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white70,
                  ),
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.https, color: Colors.white70),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.https, color: Colors.white70),
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFF90A4AE),
                      Color(0xFF455A64),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo-Regular',
                        fontSize: 15,
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
                ),
              )
            ],
          ),
        ));
  }
}
