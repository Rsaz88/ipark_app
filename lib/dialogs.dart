import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'start_page.dart';

enum DialogAction { yes, abort }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo-Regular',
              ),
              textAlign: TextAlign.right,
            ),
            content: Text(
              body,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cairo-Regular',
              ),
              textAlign: TextAlign.left,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(DialogAction.abort),
                child: const Text(
                  "Cancel",
                  style: TextStyle(),
                ),
              ),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => StartPage(),
                  ),
                ),
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        });
    return (action != null) ? action : DialogAction.abort;
  }
}
