import 'package:flutter/material.dart';
import 'ui/auth/authPage.dart';
import 'ui/pages/academics/academicsPage.dart';
import 'ui/pages/academics/classRoomPage.dart';
import 'ui/pages/homePage.dart';
import 'utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Class Room',
      theme: ThemeData(primaryColor: Constants.primaryColorDark),
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        AcademicsPage.routeName: (context) => AcademicsPage(),
        ClassRoomPage.routeName: (context) => ClassRoomPage()
      },
    );
  }
}
