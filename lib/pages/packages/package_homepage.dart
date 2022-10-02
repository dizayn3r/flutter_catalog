import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/packages/flip_card/flip_card_demo.dart';
import 'package:flutter_catalog/pages/packages/flutter_easyloading_demo/flutter_easyloading_demo.dart';
import 'package:flutter_catalog/pages/packages/fluttertoast_demo/fluttertoast_demo.dart';
import 'package:flutter_catalog/widgets/customDrawer.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageHomePage extends StatefulWidget {
  const PackageHomePage({Key? key}) : super(key: key);

  @override
  State<PackageHomePage> createState() => _PackageHomePageState();
}

class _PackageHomePageState extends State<PackageHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> packages = [
      'flip_card',
      'fluttertoast',
      'english_words',
      'flutter_easyloading',
    ];

    List<String> description = [
      'A component that provides a flip card animation. It could be used for hiding and showing details of a product.',
      'Toast Library for Flutter.',
      'A package containing the most ~5000 used English words and some utility functions.',
      'Loading progress',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Packages'),
      ),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: packages.length,
        itemBuilder: (context, index) {
          return listTile(
            onClicked: () {},
            title: packages[index],
            description: description[index],
          );
        },
      ),
    );
  }

  Widget listTile(
      {required VoidCallback onClicked,
      required String title,
      required String description}) {
    return GestureDetector(
      onTap: onClicked,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.quicksand(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Theme.of(context).primaryColor),
              Text(
                description,
                style: GoogleFonts.quicksand(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
