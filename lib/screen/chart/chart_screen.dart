import 'package:covid_dashboard_app/components/app_bar.dart';
import 'package:covid_dashboard_app/components/my_bottom_navigation.dart';
import 'package:covid_dashboard_app/constants.dart';
import 'package:covid_dashboard_app/models/menu_state.dart';
import 'package:covid_dashboard_app/screen/chart/components/body.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor.withOpacity(0.9),
      appBar: HomeAppBar(context),
      body: Body(),
      bottomNavigationBar: MyBottomNavigation(
        selectedMenu: MenuState.chart,
      ),
    );
  }
}
