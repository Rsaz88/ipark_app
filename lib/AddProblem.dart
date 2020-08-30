import 'package:flutter/material.dart';

class AddProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // build method which will be called each time we make changes in our materialApp inside it
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[200],
          title: Center(
            child: Text('The Healer '),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 20,
            left: 40,
            right: 40,
          ),
          color: Colors.white,
          child: ListView(children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "يمكنك وصف المشكلة هنا ",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo-Regular',
                  fontSize: 13,
                ),
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
                        child: Center(
                          child: SizedBox(
                            width: 30,
                            child: Image.asset("assets/images/right.png"),
                          ),
                        ),
                      ),
                      Text(
                        "تأكيد و إرسال للمعالجين ",
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
          ]),
        ),
      ),
    );
  }
}
