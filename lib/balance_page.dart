import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';

class balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          title: Text(
            "My balance",
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You need to activate",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white70,
                fontFamily: 'Cairo-Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Apple pay or Google pay",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black12,
                fontFamily: 'Cairo-Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              color: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                "Google Pay",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontFamily: 'Cairo-Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                "Apple Pay",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Cairo-Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
