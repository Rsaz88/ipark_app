import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'start_page.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        child: Container(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              _buildPageContent(
                  image: 'assets/images/SP1.png',
                  title: 'Welcome to IPark !',
                  body:
                      'A park with unmatchable experience!                       based on AI where we take Entertainment to next level  ..  '),
              _buildPageContent(
                  image: 'assets/images/SP2.png',
                  title: 'Safety is top periority ',
                  body:
                      ' IPark is the place where human safety and health come first ..'),
              _buildPageContent(
                  image: 'assets/images/SP3.png',
                  title: 'Unmatchable Experience ',
                  body: ' The Future Of Entertaiment '),
              _buildPageContent(
                  image: 'assets/images/SP4.PNG',
                  title: 'Family Friendly ',
                  body:
                      ' No matter what your age is .. You will diffenetly enjoy your time in IPark .. '),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage != 3
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              height: Platform.isIOS ? 70 : 60,
              color: Colors.black87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(4,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.white,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      for (int i = 0; i < _totalPages; i++)
                        i == _currentPage
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false)
                    ]),
                  ),
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blueGrey[400],
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            )
          : InkWell(
              onTap: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => StartPage(),
                  ),
                );
              },
              child: Container(
                height: Platform.isIOS ? 70 : 60,
                color: Colors.blueGrey[400],
                alignment: Alignment.center,
                child: Text(
                  'Sign Up Now !',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Tahoma',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildPageContent({
    String image,
    String title,
    String body,
  }) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage(image),
                height: 300,
                width: 300,
              ),
            ),
            SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Text(
              body,
              style: TextStyle(
                color: Colors.blueGrey[200],
                fontSize: 16,
                height: 2.0,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
