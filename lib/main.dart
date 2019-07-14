import 'package:flutter/material.dart';
import 'package:course_dashboard_ui/pages/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF584BDD),
        accentColor: Color(0xFFFBF6FF)
      ),
      home: Dashboard()
    );
  }
}