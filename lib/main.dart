import 'package:flutter/material.dart';
import 'package:flutter_catalog/routes/routes.dart';

import 'pages/flutter_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        // useMaterial3: true,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.dark,
        // useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      title: 'Flutter Catalog',
      initialRoute: Routes.homePage,
      onGenerateRoute: (route) => getRoute(route),
      home: const FlutterHomePage(),
    );
  }
}