import 'package:cosmetics_app/ui/DashboardScreen.dart';
import 'package:cosmetics_app/ui/DetailsScreen.dart';
import 'package:cosmetics_app/utils/NavigationRouteNames.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NavigationRouteNames.dashBoard: (context) => DashBoardScreen(),
        NavigationRouteNames.details: (context) => DetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Cosmetics App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoardScreen(),
    );
  }
}
