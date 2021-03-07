import 'package:covid_dashboard_app/components/my_bottom_navigation.dart';
import 'package:covid_dashboard_app/models/menu_state.dart';
import 'package:covid_dashboard_app/components/app_bar.dart';
import 'package:covid_dashboard_app/screen/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Body(),
      bottomNavigationBar: MyBottomNavigation(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
