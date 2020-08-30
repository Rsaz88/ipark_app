import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';

class balance extends StatelessWidget {
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
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          title: Text(
            "رصيدي",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Cairo-Regular',
            ),
          )),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "يجب تفعيل حسابك في",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black12,
                fontFamily: 'Cairo-Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Apple pay او Google pay",
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
              color: Colors.lightBlue,
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
              color: Colors.black12,
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
