import 'package:flutter/material.dart';
import 'profile_page.dart';

class about extends StatelessWidget {
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
          "About IPark ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
          left: 30,
          right: 15,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'About IPark ',
              style: TextStyle(
                color: Colors.blueGrey[200],
                fontFamily: 'Cairo-Regular',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Our Solution called IPark which stands for Intelligent Park will provide variety of entertainment solutions',
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Cairo-Regular',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
