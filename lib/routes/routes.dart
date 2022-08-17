import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/flutter_homepage.dart';
import 'package:flutter_catalog/pages/packages/package_homepage.dart';
import 'package:flutter_catalog/pages/widgets/accessiblity/accessibility.dart';
import 'package:flutter_catalog/pages/widgets/animation_motion/animationMotion.dart';
import 'package:flutter_catalog/pages/widgets/assets_images_icons/assetsImage.dart';
import 'package:flutter_catalog/pages/widgets/async/async_homepage.dart';
import 'package:flutter_catalog/pages/widgets/basics/basicsWidgets.dart';
import 'package:flutter_catalog/pages/widgets/cupertino/cupertino.dart';
import 'package:flutter_catalog/pages/widgets/input/input.dart';
import 'package:flutter_catalog/pages/widgets/layout/layout.dart';
import 'package:flutter_catalog/pages/widgets/material_components/material_components.dart';
import 'package:flutter_catalog/pages/widgets/scrolling/scrolling.dart';
import 'package:flutter_catalog/pages/widgets/styling/styling.dart';
import 'package:flutter_catalog/pages/widgets/text/text_homepage.dart';
import 'package:flutter_catalog/pages/widgets/touchRoute/touchRoute.dart';
import 'package:flutter_catalog/pages/widgets/visual_effect/visual_effect.dart';
import 'package:flutter_catalog/pages/widgets/widget_homepage.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/packages/flip_card/flip_card_demo.dart';

class Routes {
  static const homePage = '/homePage';
  static const widgetHomePage = '/widgetHomePage';
  static const packageHomePage = '/packageHomePage';
//
//Widgets Home
  static const accessibility = '/0';
  static const animationMotion = '/1';
  static const assetsImagesIcons = '/2';
  static const async = '/3';
  static const basics = '/4';
  static const cupertino = '/5';
  static const input = '/6';
  static const touchRoute = '/7';
  static const layout = '/8';
  static const materialComponent = '/9';
  static const visual = '/10';
  static const scroll = '/11';
  static const styling = '/12';
  static const text = '/13';
//
//

}

Route? getRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.homePage:
      return buildRoute(const FlutterHomePage(), settings);
    case Routes.widgetHomePage:
      return buildRoute(const WidgetHomePage(), settings);
    case Routes.packageHomePage:
      return buildRoute(const PackageHomePage(), settings);

      //--------------------Widgets-------------------
    case Routes.accessibility:
      return buildRoute(const Accessibility(title: 'Accessibility'), settings);
    case Routes.animationMotion:
      return buildRoute(const AnimationMotion(title: 'Animation'), settings);
    case Routes.assetsImagesIcons:
      return buildRoute(const AssetsImageIcon(title: 'Assets, Image and Icons'), settings);
    case Routes.async:
      return buildRoute(const AsyncHomePage(title: 'Async'), settings);
    case Routes.basics:
      return buildRoute(const BasicWidget(title: 'Basic Widgets'), settings);
    case Routes.cupertino:
      return buildRoute(const CupertinoHomePage(title: 'Cupertino Widgets'), settings);
    case Routes.input:
      return buildRoute(const Input(title: 'Input'), settings);
    case Routes.touchRoute:
      return buildRoute(const TouchRoute(title:'Touch Route'), settings);
    case Routes.layout:
      return buildRoute(const LayoutHomePage(title: 'Layout widgets'), settings);
    case Routes.materialComponent:
      return buildRoute(const MaterialComponent(title:'Material components'), settings);
    case Routes.visual:
      return buildRoute(const VisualEffect(title: 'Visual effects'), settings);
    case Routes.scroll:
      return buildRoute(const Scrolling(title: 'Scrolling'), settings);
    case Routes.styling:
      return buildRoute(const Styling(title: 'Styling'), settings);
    case Routes.text:
      return buildRoute(const TextHomePage(title:'Text'), settings);
    default:
      return null;
  }
}

PageTransition buildRoute(Widget child, RouteSettings settings) =>
    PageTransition(
      settings: settings,
      type: PageTransitionType.fade,
      child: child,
    );
