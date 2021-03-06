import 'package:covid_dashboard_app/constants.dart';
import 'package:flutter/material.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0.0,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      iconSize: 28.0,
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_none),
        iconSize: 28.0,
        onPressed: () {},
      ),
    ],
  );
}
