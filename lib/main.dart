import 'package:e_book_online_reading/constants.dart';
import 'package:e_book_online_reading/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/rounded_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Bitmap.png'), fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline3,
                  children: [
                TextSpan(
                  text: "Flamin",
                ),
                TextSpan(
                    text: "go", style: TextStyle(fontWeight: FontWeight.bold))
              ])),
          SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: RoundedButton(
              text: "start reading",
              fontSize: 20,
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
