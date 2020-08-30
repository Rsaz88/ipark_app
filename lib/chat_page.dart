import 'package:flutter/material.dart';
import 'profile_page.dart';

class chat extends StatelessWidget {
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
          "الرسائل",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Cairo-Regular',
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "عذراً .. لا يوجد لديك أي رسائل حالياً",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo-Regular',
              color: Colors.black26,
              fontSize: 23,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
