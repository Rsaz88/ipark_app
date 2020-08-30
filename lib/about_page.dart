import 'package:flutter/material.dart';
import 'profile_page.dart';

class about extends StatelessWidget {
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
          "من نحن ؟",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Cairo-Regular',
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
              'من نحن ؟',
              style: TextStyle(
                color: Colors.black54,
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
              "يهدف تطبيقنا لمساعدتك في طرح  مشكلتك من خلال نص او صورة او مقطع فيديو او صوت وتحديد المجال المناسب ثم ستكون متصلاً بمجموعة من المعالجين ( الأشخاص الذين سيساعدونك ) وسوف يكون لك الحرية في اختيار المعالج المناسب لك و سيساعدك على حل المشكلة خطوة بخطوة ، يمكنك ايضا اختيار معالج يمكنه مساعدتك عبر الإنترنت أو محليًا عن طريق تحديد موقعك باستخدام GPS  ",
              style: TextStyle(
                color: Colors.black38,
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
