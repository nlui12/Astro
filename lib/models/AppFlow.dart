import 'package:astro_nicklui/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:astro_nicklui/screen/menu/MenuPage.dart';

/// Hold information about our app's flows.
class AppFlow {
  const AppFlow({
    @required this.title,
    @required this.iconData,
    @required this.page,
    @required this.navigatorKey,
  })  : assert(title != null),
        assert(iconData != null),
        assert(page != null),
        assert(navigatorKey != null);

  final String title;
  final IconData iconData;
  final Widget page;
  final GlobalKey<NavigatorState> navigatorKey;
}

final List<AppFlow> appFlows = [
  AppFlow(
    title: 'Home',
    iconData: Icons.account_balance,
    page: HomePage(),
    navigatorKey: GlobalKey<NavigatorState>(),
  ),
  AppFlow(
    title: 'Menu',
    iconData: Icons.settings,
    page: MenuPage(),
    navigatorKey: GlobalKey<NavigatorState>(),
  ),
];
