import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  Widget _createHeader(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 100.0,
                style: FlutterLogoStyle.markOnly,
              ),
              Text(
                'Flutter',
                style: GoogleFonts.quicksand(fontSize: 20.0,fontWeight:  FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createDrawerItem({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(text,style: GoogleFonts.quicksand(fontSize: 16.0,fontWeight:  FontWeight.w600),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _createHeader(context),
          _createDrawerItem(
            context: context,
            icon: Icons.home_rounded,
            text: 'Home',
            onTap: () => Navigator.pushReplacementNamed(context, '/homePage'),
          ),
          _createDrawerItem(
            context: context,
            icon: Icons.view_compact_outlined,
            text: 'Widgets',
            onTap: () => Navigator.pushReplacementNamed(context, '/widgetHomePage'),
          ),
          _createDrawerItem(
            context: context,
            icon: Icons.wallet_giftcard_rounded,
            text: 'Packages',
            onTap: () => Navigator.pushReplacementNamed(context, '/packageHomePage'),
          ),
        ],
      ),
    );
  }
}
