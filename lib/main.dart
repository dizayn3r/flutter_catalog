import 'package:flutter/material.dart';
import 'package:flutter_catalog/color.dart';
import 'package:flutter_catalog/routes/routes.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/flutter_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColor.red,
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: GoogleFonts.quicksand(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColor.white),
          )
          // useMaterial3: true,
          ),
      darkTheme: ThemeData(
          primarySwatch: AppColor.red,
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: GoogleFonts.quicksand(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColor.white),
          )
          // useMaterial3: true,
          ),
      themeMode: ThemeMode.system,
      title: 'Flutter Catalog',
      initialRoute: Routes.homePage,
      onGenerateRoute: (route) => getRoute(route),
      home: const FlutterHomePage(),
    );
  }
}
